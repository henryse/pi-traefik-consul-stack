#!/usr/bin/env bash
# Set some pretty colors...
#
green='\033[1;32m'
dark_green='\033[0;32m'
white='\033[1;37m'
nocolor='\033[0m'

# Find the IP Address of the VM running docker.
#
eval $(docker-machine env consul-stack)
export DOCKER_IP=$(docker-machine ip consul-stack)

# Fire it up!
#
docker-compose up -d

# Check it out
#
echo -e "${white}Docker host is ${green}${DOCKER_IP}${nocolor}"
echo -e ""
echo -e "Consul:           ${dark_green}${DOCKER_IP}${nocolor}:${green}8500${nocolor}"
echo -e "Traefik HTTP In:  ${dark_green}${DOCKER_IP}${nocolor}:${green}8080${nocolor}"
echo -e "Traefik Admin UI: ${dark_green}${DOCKER_IP}${nocolor}:${green}8081${nocolor}"
