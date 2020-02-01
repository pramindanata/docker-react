green=`tput setaf 3`
reset=`tput sgr0`

echo "${green}# Build Image${reset}"
docker build -t pramindanata/docker-react -f Dockerfile.prod .

echo "${green}# Stop & Remove Previous Container${reset}"
docker rm -f react-web

echo "${green}# Run Container${reset}"
docker run --name react-web -d -p 80:80 pramindanata/docker-react
# docker rmi $(docker images -f "dangling=true" -q) --force