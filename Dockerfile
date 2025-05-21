FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port
EXPOSE 3000

# Start in dev mode with nodemon
CMD ["npm", "run", "dev"]
