# python dump.py {domain}

import os
import sys
import psycopg2
import base64

url = sys.argv[1]
DATABASE_URL = os.environ['DATABASE_URL']

conn = psycopg2.connect(DATABASE_URL, sslmode='require')
cur = conn.cursor()

#checking if any previous entry in the database to avoid duplicates

cur.execute("select * from output;")
t = cur.fetchall()

doms = []

for i in t:
  doms.append(i[0])

if url in doms:
  pass

else:
  #read from output.txt and dump in database
  f = open('/app/results/{}/output.txt'.format(url), 'r')
  res = f.read()
  f.close()

  res = bytes(res, 'utf-8')
  final = base64.standard_b64encode(res)
  final = final.decode('utf-8')

  cur.execute(f"insert into output values ('{url}', '{final}');")
  conn.commit()

conn.commit()
cur.close()
conn.close()
