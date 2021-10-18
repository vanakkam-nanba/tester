url=$1

printf "=========================================\n" >> /app/results/$url-output.txt
printf "====  REPORT OF TARGET [$url]  ==== \n" >> /app/results/$url-output.txt
printf "=========================================\n\n" >> /app/results/$url-output.txt

printf "[CTRL+F AND SEARCH THE REQUIRED RESULT]\n\n" >> /app/results/$url-output.txt
printf "==== INDEX OF REPORT ==== \n\n" >> /app/results/$url-output.txt

printf "1 - DNSCAN\n" >> /app/results/$url-output.txt
printf "2 - CLICKJACKING\n" >> /app/results/$url-output.txt
printf "3 - CORSTEST\n" >> /app/results/$url-output.txt
printf "4 - FIREWALL DETECTION" >> /app/results/$url-output.txt
printf "5 - WEBDAV FILE UPLOAD TEST" >> /app/results/$url-output.txt
printf "6 - ROBOTS.TXT CHECKER" >> /app/results/$url-output.txt
printf "7 - SUBDOMAINS" >> /app/results/$url-output.txt

printf "\n\n\n" >> /app/results/$url-output.txt
printf "######################################################################\n" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt
