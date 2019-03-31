#python to download NJ data and place into Postgres Database
import wget # learn more: https://python.org/pypi/wget
import ssl # learn more: https://python.org/pypi/ssl
#import python3_wget 
# learn more: https://python.org/pypi/python3-wget
import os
import pandas as pd
import sys, subprocess, os

import psycopg2
import numpy as np
import psql as creds
import pandas.io.sql as psql

import io

dblist = pd.read_csv("NJDataUrls.txt")


try:
    _create_unverified_https_context = ssl._create_unverified_context
except AttributeError:
  # Legacy Python that doesn't verify HTTPS certificates by default
    pass
else:
    # Handle target environment that doesn't support HTTPS verification
      ssl._create_default_https_context = _create_unverified_https_context


for index,row in dblist.iterrows():
  exists = os.path.isfile(row['file'])
  name=row['file']
  if exists:
    print('Skipping download of {}'.format(name))
  else: 
    print('Beginning file download of {} with wget module'.format(name))
    filename = wget.download(row['url'],out=row['file']) 
    print('finishing file download with wget module {}'.format(filename) )
    
    
#Open postgresDatabase
# Set up a connection to the postgres server.
conn_string = "host="+ creds.PGHOST +" port="+ creds.PGPORT +" dbname="+ creds.PGDATABASE +" user=" + creds.PGUSER \
+" password="+ creds.PGPASSWORD
conn=psycopg2.connect(conn_string)
print("Connected!")    
    


cur = conn.cursor()
for index,row in dblist.iterrows():
  exists = os.path.isfile(row['file'])
  name=row['file']
  pre="-N" + name[:5] 
  if exists:
    conn.autocommit=True
    print('Read and load Schema of {}'.format(name))
    cur.execute("DROP SCHEMA IF EXISTS "+ name[:5]+" CASCADE") #Remove Schema and Data before Adding
    cur.execute("CREATE SCHEMA " + name[:5] + ";")
    schema=subprocess.check_output(["mdb-schema","--no-indexes","--no-relations",pre, name, "postgres"])
    cur.execute(schema)
    # Dump data into database
    dbtables=subprocess.check_output(["mdb-tables","-1",name]).decode()
    conn.autocommit=False
    #Read each table as a csv and use postgres Copy FROM
    #Copy From is much faster than using inserts.
    for table in dbtables.splitlines():
      if not table == "" :
        print('Adding data for scheme {} : table {}'.format(name[:5],table))
        dbtabledata = io.StringIO(subprocess.check_output(["mdb-export","-H","-dx23x","-X\\",pre,name,table]).decode().replace("|","[]").replace("x23x","|"))
        cur.copy_expert("COPY " + '"'+name[:5] + '"."'+table+'" ' +"FROM STDIN DELIMITER '|' CSV QUOTE '\"' ESCAPE '\\'" ,dbtabledata)
        conn.commit()
  else: 
    print('Missing Databasefile {}'.format(name))

conn.close()