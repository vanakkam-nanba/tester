#!/bin/bash

url=$1

echo "11) SUBDOMAINS [TITLE + CNAME]" >> /app/results/$url-output.txt
printf "\n\n" >> /app/results/$url-output.txt

/app/modules/binaries/httpx -silent -no-color -threads 90 -title -cname -l /app/$url-subs | tee -a /app/results/$url-output.txt

printf "\n\n\n" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "\n######################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt
