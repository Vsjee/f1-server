# App based in node 18
FROM node:20-alpine as builder

# Copy package.json and pnpm-lock.yaml for the dependencies
COPY package.json ./
COPY pnpm-lock.yaml ./

# Install pnpm globally
RUN npm i -g pnpm

# Install pnpm modules
RUN pnpm i

# Set work dir /f1server
WORKDIR /f1server

# # Copy files in /f1server
COPY ./ /f1server

# Expose 9000 port
EXPOSE 9000

# Run command pnpm start
CMD ["pnpm", "start"]