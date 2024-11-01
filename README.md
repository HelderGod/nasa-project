# NASA Project - Space Mission Control

This project is a space mission control application that allows users to schedule interstellar launches and track the progress of each mission.

## Getting Started

- Ensure you have Node.js installed.
- Create a free MongoDB Atlas database online or start a local MongoDB database.
- Create a `server/.env` file with a `MONGO_URL` property set to your MongoDB connection string.
- In the terminal, run: 
  ```bash
  npm install

## Running the Project

- In the terminal, run:
  ```bash
  npm run deploy
- Browse to the mission control frontend at localhost:8000 and schedule an interstellar launch!

## Docker

- Ensure you have the latest version of Docker installed
- Run
  ```bash
  docker build -t nasa-project
- Run
  ```bash
  docker run -it -p 8000:8000 nasa-project

## Running the Tests

To run any automated tests, run `npm test`. This will:

- Run all the client-side tests:
  ```bash
  npm test --prefix client
- Run all the server-side tests:
  ```bash
  npm test --prefix server

## Notes

- This project was developed on Windows. Make sure to adjust any commands as necessary for other operating systems.
