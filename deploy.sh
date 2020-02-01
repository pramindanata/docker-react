docker build -t pramindanata/docker-react -f Dockerfile.prod .
docker stop react-web
docker run --name react-web -d -p 80:80 pramindanata/docker-react
# docker rmi $(docker images -f "dangling=true" -q) --force