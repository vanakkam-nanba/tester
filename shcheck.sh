#!/bin/bash

url=$1

echo "14) SECURITY HEADERS CHECK" >> /app/results/$url-output.txt
printf "\n\n" >> /app/results/$url-output.txt

python /app/modules/binaries/shcheck http://$url | tee -a /app/results/$url-output.txt

printf "\n\n\n" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "\n######################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt
