# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Define the start command to run your application
CMD ["npm", "run", "dev"]
