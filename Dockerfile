# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install
RUN npm install express

# Copy application source
COPY . .

# Expose application port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
