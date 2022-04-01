#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

printf "${GREEN}[+] checking DNS data for $1${NC}\n"
host $1

printf "\n${GREEN}[+] running directory scan on http://$1/${NC}\n"
declare -a advanced_wordlist=("index" "robots.txt" "index.html", "admin.php", "phpmyadmin", ".git", "..;/")

for i in "${advanced_wordlist[@]}"
do
    status_code=$(curl --write-out %{http_code} --silent --output /dev/null http://$1/)
    
    if [[ "$status_code" == 200 ]] ; then
        echo "found directory $i"
        found=true
    fi
done

if [ $found -eq 1 ]; then
        echo "done scanning for directories"
    else
        echo "no directories found..."
fi

printf "\n${GREEN}[+] fetching response headers for $1${NC}\n"
curl --head "http://$1/"

printf "${GREEN}[+] running a portscan on $1${NC}\n"
for port in {1..65535}; do
    echo >/dev/tcp/$1/$port &&
    echo "port $port is open" ||
    echo "port $port is closed"
done