
# See working examples: https://stackoverflow.com/a/42618402/9814131

# docker container prune  # removing all stopped containers

docker images -f dangling=true # list all dangling images

# docker image prune --all # removing dangling AND ununsed images


PROJECTS_REGEX="(vsc-hubble|vsc-portal)"


# remove images of projects
docker container rm \
$(docker container ps --all | grep -E ${PROJECTS_REGEX} | awk '{print $1}') # -E stands for more extensive regular expression

# remove images of projects
docker rmi \
$(docker images --all | grep -E ${PROJECTS_REGEX} | awk '{print $3}') # -E stands for more extensive regular expression


# reference
#
#

# grep
# https://www.digitalocean.com/community/tutorials/using-grep-regular-expressions-to-search-for-text-patterns-in-linux