# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the backend code into the container
COPY . .

# Expose the port your backend app runs on
EXPOSE 5000

# Define the start command to run your backend app
CMD ["npm", "run", "dev"]

