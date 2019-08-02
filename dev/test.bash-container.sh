CONTAINER_ID=${1:-""}

if [[ ${CONTAINER_ID} == "" ]]
then
    echo ERROR: please specify a container id.
    return
fi

docker exec -it ${CONTAINER_ID} bash