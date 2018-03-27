# You should always specify a full version here to ensure all of your developers
# are running the same version of Node.
FROM node:7.10.0

# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn

# Create app directory
WORKDIR /home/raippl/code/italia/daf-dataportal-1

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

# Build for production.
RUN npm run build

# Install `serve` to run the application.
RUN npm install -g serve

# Set the command to start the node server.
CMD serve  -s build

# Tell Docker about the port we'll run on.
EXPOSE 5000