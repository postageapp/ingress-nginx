export DOCKER_CLI_EXPERIMENTAL=enabled

echo "f4d8bfeda333068cf3a03ecb615b2dc7f2edeaca" | docker login docker.pkg.github.com -u chenhuajie1@gmail.com --password-stdin

make init-docker-buildx
docker buildx use ingress-nginx --default --global

# disable docker in docker tasks

echo "Building NGINX image..."
ARCH=amd64 make build container
# push
# ARCH=arm64 make build container push
