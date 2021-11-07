url=$1

printf "===================================================\n" >> /app/results/$url-output.txt
printf "====  REPORT OF TARGET [$url]                 ==== \n" >> /app/results/$url-output.txt
printf "==================================================\n\n" >> /app/results/$url-output.txt

printf "[CTRL+F AND SEARCH THE REQUIRED RESULT]\n\n" >> /app/results/$url-output.txt
printf "==== INDEX OF REPORT ==== \n\n" >> /app/results/$url-output.txt

printf "1  - DNSCAN\n" >> /app/results/$url-output.txt
printf "2  - CLICKJACKING\n" >> /app/results/$url-output.txt
printf "3  - CORSTEST\n" >> /app/results/$url-output.txt
printf "4  - FIREWALL DETECTION\n" >> /app/results/$url-output.txt
printf "5  - WEBDAV FILE UPLOAD TEST\n" >> /app/results/$url-output.txt
printf "6  - ROBOTS.TXT CHECKER\n" >> /app/results/$url-output.txt
printf "7  - SUBDOMAINS\n" >> /app/results/$url-output.txt
printf "8  - DIRECTORY BRUTE\n" >> /app/results/$url-output.txt
printf "9  - JS FINDER + LINK FINDER\n" >> /app/results/$url-output.txt
printf "10 - SUBDOMAINS TAKEOVER CHECK\n" >> /app/results/$url-output.txt
printf "11 - SUBDOMAINS [TITLE + CNAME]\n" >> /app/results/$url-output.txt
printf "12 - SUBDOMAINS [IP + WEBSERVER]\n" >> /app/results/$url-output.txt


printf "\n\n\n" >> /app/results/$url-output.txt
printf "######################################################################\n" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt
