# my-docker-tools

Usage: either run the script, or cherry pick the commands in the script.

## Takeaways

- Container: when you do `docker run`, it creates a container. Container is kind of an instantiation of image. [Learn more](https://www.quora.com/What-is-difference-between-image-and-container-in-docker).

## Useful Docker Commands

- Execute in docker container: `docker exec -it <container name> /bin/bash`
- Create a user-defined bridge network: `docker network create --driver=bridge my-bridge-network`