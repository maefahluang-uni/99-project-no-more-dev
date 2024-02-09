# Use an official Node.js image as a base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of the local 'src' folder into the container at '/app/src'
COPY src/ /app/src

# Install dependencies
COPY package*.json ./
RUN npm install

EXPOSE 80
# Start your application
CMD ["npm", "start"]