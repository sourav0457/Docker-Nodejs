# Specify base image
FROM node:12.18.4-alpine

# Specifying the working directory inside the container
WORKDIR /usr/app

# All the commands below will get executed relative to the working directory mentioned above
COPY ./package.json ./

# Install dependencies
RUN npm install

# Copying rest of the files relative to the build context to the container
COPY ./ ./

# Default Command
CMD ["npm", "start"]