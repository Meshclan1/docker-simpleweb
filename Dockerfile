# Specify a base image
FROM node:14-alpine

# Ensures our files are written to a specific workdir.
# In this case the /usr/app directory to avoid any conflicts
WORKDIR /usr/app

# This copies everything in the route directory of our project into # the route directory of our docker file
COPY ./package.json ./

# Install some dependencies
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]


# docker build -t meshclan1/simpleweb .
# docker run -p 8080:8080 meshclan1/simpleweb
# docker ps
# docker exec -it (id) sh