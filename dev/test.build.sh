IMAGE_NAME=${1}
IMAGE_TAG=${2}
DOCKERFILE_PATH=${3}

# will mount current path (same as this script) for dockerfile
docker build --rm -t ${IMAGE_NAME}:${IMAGE_TAG} -f ${DOCKERFILE_PATH} .
