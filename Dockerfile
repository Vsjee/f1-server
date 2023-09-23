# App based in node 18
FROM node:20-alpine

# Set work dir /coreserver
WORKDIR /f1server

# Copy files in /coreserver
COPY ./ /f1server

# Install npm modules
RUN npm install

# Rebuild npm packages
RUN npm rebuild

# Expose 9000 port
EXPOSE 9000

# Run command npm start
CMD ["npm", "start"]