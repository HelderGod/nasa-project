# Usar a imagem Node.js alpine
FROM node:lts-alpine

# Definir o diretório de trabalho para /app
WORKDIR /app

# Copiar apenas os ficheiros de dependências
COPY package*.json ./
COPY client/package*.json client/
COPY server/package*.json server/

# Instalar as dependências para o client e server
RUN npm run install-client --only=production
RUN npm run install-server --only=production

# Copiar o código do cliente
COPY client/ client/

# Definir o BUILD_PATH para o servidor e construir a aplicação diretamente em server/public
ENV BUILD_PATH=../server/public
RUN npm run build --prefix client

# Copiar o código do servidor
COPY server/ server/

# Definir o utilizador como node para maior segurança
USER node

# Definir o comando de arranque da aplicação
CMD ["npm", "start", "--prefix", "server"]

# Expor a porta 8000
EXPOSE 8000
