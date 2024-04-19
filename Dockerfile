# Use the official Node.js 14 image as the base image
FROM node:latest

# Set the working directory in the Docker container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the source code from your local "src" directory to the "src" directory in the container
COPY src/ src/

# If there are other directories or files at the root of your project that should be included in the image, copy them as well
# For example, if you have a "public" directory or other necessary files, uncomment and adjust the following lines:
# COPY public/ public/
# COPY some-config.json .

# If there's a "build" script in your package.json that compiles/transpiles your JavaScript, run it:
# RUN npm run build

# Expose the port the app runs on, replace with your application's port if it's not 3000
EXPOSE 3002

# Command to run your app using npm
CMD ["npm", "start"]
