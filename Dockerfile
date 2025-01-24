# Use official Node.js image from the Docker Hub
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port
EXPOSE 8080

# Run the app
CMD ["node", "index.js"]
