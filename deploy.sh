#!/bin/bash
docker login -u karthikramachandren -p dckr_pat_dw1T98y9tv8FnMIsW2maf6y9l3M
# Tag the image with the Docker Hub repository name and version
if [[ $GIT_BRANCH == 'origin/dev' ]]; then
docker tag project:v1 karthikramachandren/prod
docker push karthikramachandren/prod
# Docker login
elif [[ $GIT_BRANCH == 'origin/dev' ]]; then
docker tag project:v1 karthikramachandren/dev
docker push karthikramachandren/dev
fi
