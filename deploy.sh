echo "# Build Image"
docker build -t pramindanata/docker-react -f Dockerfile.prod .

echo "# Stop Previous Container"
docker stop react-web

echo "# Run Container"
docker run --name react-web -d -p 80:80 pramindanata/docker-react
# docker rmi $(docker images -f "dangling=true" -q) --force