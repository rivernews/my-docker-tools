# !! IMPORTANT
# the ordering is important - `--network=` needs to come before image name

# 1. `--name=` Give container a name, otherwise it'll be a long hash string.
# 1. `--rm` Automatically remove the container after it stops
# 1. `--network=` Attach to existing network
# 1. Use the image name as last arg
CONTAINER_NAME=$1
IMAGE_NAME=$2
NETWORK_NAME=$3

docker run --rm --name=${CONTAINER_NAME} --network=${NETWORK_NAME} ${IMAGE_NAME}
