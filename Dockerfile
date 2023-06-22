# Dockerfile for NotesProject

# Set base image with Node.js version 14
FROM node:14.16.0-alpine3.13

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json for frontend
COPY frontend/package*.json ./frontend/

# Install frontend dependencies
RUN cd frontend && npm install

# Copy frontend source code
COPY frontend/ ./frontend/

# Copy package.json and package-lock.json for backend
COPY package*.json ./

# Install backend dependencies
RUN npm install

# Copy backend source code
COPY backend/ ./backend/

# Expose ports 3000 and 5000
EXPOSE 3000 5000

# Set command to start the application
CMD ["npm", "run", "dev"]
