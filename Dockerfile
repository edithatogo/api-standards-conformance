FROM node:20-alpine@sha256:fb4cd12c85ee03686f6af5362a0b0d56d50c58a04632e6c0fb8363f609372293

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock to the working directory
COPY package*.json yarn.lock ./

RUN yarn

# Copy the entire project to the working directory, excluding files in .dockerignore
COPY . .

RUN rm -rf features/automated-tests

# Script wrapper prepares workspace and obfuscates cucumber execution engine, only allowing users to pass additional parameters
ENTRYPOINT ["/usr/src/app/run_tests.sh"]
