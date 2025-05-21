# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy files
COPY package.json ./
COPY index.js ./

# Install dependencies (none in this example)
RUN npm install

# Expose port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
