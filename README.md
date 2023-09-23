# Basic f1-server

## Basic docker commands for run this server locally 🐋

1. Build the image

    - `docker build -t f1-api .`

    - docker build [-t or --tag] [name of how you want to save the image] .

2. Run the image and build the container locally

    - `docker run 9000:9000 f1-api`

    - docker run [host_port]:[container_port]  [name of the image]

Or insted use Docker Desktop.