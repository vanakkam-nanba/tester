#python run.py {domain}

import os
import sys
import telebot

url = sys.argv[1]
bot = telebot.TeleBot(os.environ['API_KEY'])
chat_id = os.environ['CHAT_ID']

#creating a directory in the name of target to save all results
os.mkdir("/app/results/{}".format(url))
os.system("/app/results/{}/output.txt".format(url))
os.system("chmod 777 /app/* -R")


#dnscan
os.system('bash /app/modules/dnscan.sh')
bot.send_message(chat_id, f"dnscan for {url} completed !")

#subdomain_enumeration
os.system('bash /app/modules/subdomains.sh')
bot.send_message(chat_id, f"subdomain enumeration for {url} completed !")

#urls_gather
os.system('bash /app/modules/gather_urls.sh')
bot.send_message(chat_id, f"gathered all urls for {url} !")


#dumping to database with insert.py
os.system('python insert.py {}'.format(url))
