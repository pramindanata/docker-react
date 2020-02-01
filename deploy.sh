docker build -t pramindanata/docker-react -f Dockerfile.prod .
docker stop web
docker run --name web -d -p 80:80 pramindanata/docker-react