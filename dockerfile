# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build your React app
RUN npm run build

# Set environment variables
ENV PORT=3000

# Expose port 3000 to the outside world
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
