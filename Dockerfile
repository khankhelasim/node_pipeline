#Use an official Node.js as rutime image
From node:14
#Set the working directory inside the container
WORKDIR /usr/src/app
# Copying all package files to container
COPY package*.json ./
# Install all dependencies
RUN npm install
# Copy the rest of your source code to the container
COPY . .
# Expose port for your application
EXPOSE 8080
# Define the commands to run your application
CMD ["node", "app.js"]


