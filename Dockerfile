# Use the official Node.js image from the Docker Hub
FROM node:23.10.0

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app (use npm start or npm run build for production)
CMD ["npm", "start"]
