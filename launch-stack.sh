#!/usr/bin/env bash
# Set some pretty colors...
#
green='\033[1;32m'
dark_green='\033[0;32m'
white='\033[1;37m'
nocolor='\033[0m'

# Find the IP Address of the VM running docker.
#
# eval $(docker-machine env default)
# export DOCKER_IP=$(docker-machine ip default)

# Having issue getting docker-machine built on PI, assume we are on eth0:
#
export DOCKER_IP=$(/sbin/ip -4 -o addr show dev eth0| awk '{split($4,a,"/");print a[1]}')

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
