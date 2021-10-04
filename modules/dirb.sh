#!/bin/bash

url=$1
furl=http://$url

furl=$(python3 -c "import requests; t = requests.head('$url', allow_redirects=True).url; print(t)")

echo "5) DIRECTORY BRUTE" >> /app/results/${url}-output.txt
printf "\n\n" >> /app/results/${url}-output.txt

/app/modules/binaries/gobuster dir -q -w /app/modules/wordlists/big.txt -t 65 -u $furl | tee -a /app/results/${url}-output.txt

printf "\n\n\n" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt