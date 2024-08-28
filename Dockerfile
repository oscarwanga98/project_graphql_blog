# Use a Node.js base image with the specified version
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install



# Copy the rest of the application code
COPY . .

#run sbuild
RUN npm run build

# Expose the port used by Next.js (3000)
EXPOSE 3000

# Define the start command
CMD ["npm", "start"]