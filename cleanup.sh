
# See working examples: https://stackoverflow.com/a/42618402/9814131

# docker container prune  # removing all stopped containers

echo INFO: list all containers
docker container ls

# docker image prune --all # removing dangling AND ununsed images

if [[ $1 == '' ]]
then
    PROJECTS_REGEX="(vsc-hubble|vsc-portal)"
    echo INFO: give an argument like ${PROJECTS_REGEX}
    return
else
    PROJECTS_REGEX=${1}
fi

CONTAINERS=$(docker container ps --all | grep -E ${PROJECTS_REGEX} | awk '{print $1}') # -E stands for more extensive regular expression
IMAGES=$(docker images --all | grep -E ${PROJECTS_REGEX} | awk '{print $3}') # -E stands for more extensive regular expression

if [[ ${CONTAINERS} == '' ]]
then
    echo INFO: no container to remove
else
    # remove images of projects
    docker stop ${CONTAINERS}
    docker container rm ${CONTAINERS}
fi

if [[ ${IMAGES} == '' ]]
then
    echo INFO: no image to remove
else
    # remove images of projects
    docker rmi ${IMAGES}
fi



# clean up
echo INFO: list all dangling images
docker images -f dangling=true

echo INFO: cleaning dangling images whose repository is none...
DANGLING_IMAGES=$(docker images -f dangling=true | grep -E "<none>" | awk '{print $3}')
DANGLING_IMAGES=$(docker images -f dangling=true -q)
if [[ DANGLING_IMAGES == '' ]]
then
    echo INFO: no dangling image to clean up.
else
    docker rmi ${DANGLING_IMAGES}
fi


# reference
#
#

# grep
# https://www.digitalocean.com/community/tutorials/using-grep-regular-expressions-to-search-for-text-patterns-in-linux