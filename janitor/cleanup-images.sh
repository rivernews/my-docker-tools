IMAGES_SELECTOR=${1}

echo INFO: listing all relevant images...
docker images -a | grep -E ${IMAGES_SELECTOR}


docker images -a | grep -E ${IMAGES_SELECTOR} | awk '{print $3}' | xargs docker rmi && echo INFO: Successfully removed images. && return

echo ERROR: failed removing image, see message above