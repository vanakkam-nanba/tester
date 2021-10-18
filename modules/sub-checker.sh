#!/bin/bash

#tests for subdomain takeover, portscan on subs, gets-title

url=$1

echo "10) SUBDOMAINS CHECK" >> /app/results/${url}-output.txt

printf "\n\nSUBDOMAINS TAKEOVER CHECK: \n\n" >> /app/results/${url}-output.txt
/app/modules/binaries/subzy --concurrency 100 -hide_fails -targets /app/subs | tee -a /app/results/${url}-output.txt
printf "\n\nSUBDOMAINS GET-TITLE: \n\n" >> /app/results/${url}-output.txt
/app/modules/binaries/httpx -silent -threads 120 -title -l /app/subs | tee -a /app/results/${url}-output.txt
printf "\n\nSUBDOMAINS WEBSERVER CHECK: \n\n" >> /app/results/${url}-output.txt
/app/modules/binaries/httpx -silent -ip -no-color -threads 120 -web-server -l /app/subs | tee -a /app/results/${url}-output.txt


printf "\n\n\n" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt
