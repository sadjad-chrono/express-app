# Use an official Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the app's port
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
