#!/usr/bin/env sh

os="$(uname -s)"
docker_user=''
docker_image='node'
proj_root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../"

if [[ "$os" == MINGW64* ]]; then
    # Windows requires fuckery of $PWD to get it back into a proper Windows path
    # This takes '/c/projects/something' and returns 'c:/projects/something'
    proj_root="$(echo $proj_root | sed -re 's/^\///' | sed -re 's/^.{1}/&:/')"
else
    # Unix requires setting the docker --user parameter
    docker_user="--user $(id -u):$(id -g)"
fi

docker run --rm --volume $proj_root/$PROJECT_PATH:/usr/src/app -w /usr/src/app $docker_user $docker_image npm --loglevel=warn $@