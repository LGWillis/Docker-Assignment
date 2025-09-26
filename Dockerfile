FROM node:16 # Starts with base image of Node.js version 16
WORKDIR /app # Sets the working directory inside the container to /app
COPY package.json . # Copies package.json to the working directory
RUN npm install # Executes npm install to install dependencies
COPY . . # Copies all files from local directory to container
EXPOSE 3000 # Documents the port the app runs on
CMD ["npm", "start"] # Specifies default command to run when container starts


