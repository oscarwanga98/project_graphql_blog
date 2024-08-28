# Use an official Node.js 14 image as a base
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port
EXPOSE 3000

# Run the command to start the development server
CMD ["npm", "run", "dev"]