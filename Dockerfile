# use the latest LTS (long term support) version
FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# App binds to port
EXPOSE 3001

# Start command
CMD [ "npm", "start" ]
