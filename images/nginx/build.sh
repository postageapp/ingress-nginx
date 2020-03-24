export DOCKER_CLI_EXPERIMENTAL=enabled

echo "f4d8bfeda333068cf3a03ecb615b2dc7f2edeaca" | docker login docker.pkg.github.com -u chenhuajie1@gmail.com --password-stdin

make init-docker-buildx
docker buildx use ingress-nginx --default --global

echo "Building NGINX images..."
make release
