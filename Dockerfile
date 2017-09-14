############################################
# Dockerfile to build Sample Application
# For AWS ECS Service
# This Sample Application will be used to function as a placeholder for my final Queue Processor that I am working on.
# Right now, I am just basically giving Kyle shit by displaying this.
# He is such a dumbass.
############################################

# Set base image to python
FROM node:8.7.0-alpine

# File Author / Maintainer
MAINTAINER Timmy Timm

# Copy source file and python req's
COPY . /usr/src/app/

WORKDIR /usr/src/app/

# Install requirements
RUN npm install

EXPOSE 8088

CMD ["node", "/usr/src/app/app.js"]
