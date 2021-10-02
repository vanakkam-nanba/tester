#!/bin/bash
# https://github.com/gokulapap/submax

url=$1

/app/modules/binaries/subfinder -silent -d $url > /app/sub1

#curl -s "https://crt.sh/?q=$url" | grep "<TD>" | grep $url | cut -d ">" -f2 | cut -d "<" -f1 | sort -u | sed '/^*/d' > sub3
#curl -s "https://rapiddns.io/subdomain/$url#result" | grep "<td><a" | cut -d '"' -f 2 | grep http | cut -d '/' -f3 | sort -u > sub4
#curl -s "https://dns.bufferover.run/dns?q=.$url" | jq -r .FDNS_A[] | cut -d '\' -f2 | cut -d "," -f2 |  sort -u > sub5
#curl -s "https://riddler.io/search/exportcsv?q=pld:$url" | grep -Po "(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | sort -u > sub6
#curl -s "https://jldc.me/anubis/subdomains/$url" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | cut -d "/" -f3 > sub7
#curl -s "https://sonar.omnisint.io/subdomains/$url" | cut -d "[" -f1 | cut -d "]" -f1 | cut -d "\"" -f 2 > sub8


echo "2) SUBDOMAINS :" >> /app/results/$url-output.txt
printf "\n\n" >> /app/results/$url-output.txt

sort /app/sub1 | uniq | tee -a /app/results/$url-output.txt

printf "\n\n\n" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "######################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt
