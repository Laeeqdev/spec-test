# Use a Node.js base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app


# Install dependencies
RUN npm install

# Install Redocly CLI globally
RUN npm install -g @redocly/openapi-cli

# Copy the entire spec directory to the working directory
COPY ./spec ./spec

# Command to run Redocly preview
CMD ["redocly", "preview", "-d", "./spec"]
