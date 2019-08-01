PROJECT_IDENTIFIER=moon_

echo INFO: list all relevant containers
docker container ls --all | grep -E ${PROJECT_IDENTIFIER}

echo INFO: removing containers ...
docker container ls --all | grep -E ${PROJECT_IDENTIFIER} | awk '{print $1}' | xargs docker container rm