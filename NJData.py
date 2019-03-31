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

from StringIO import StringIO

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
    filename = wget.download(row['url'],row['file']) 
    print('finishing file download with wget module')
    
    
#Open postgresDatabase
# Set up a connection to the postgres server.
conn_string = "host="+ creds.PGHOST +" port="+ creds.PGPORT +" dbname="+ creds.PGDATABASE +" user=" + creds.PGUSER \
+" password="+ creds.PGPASSWORD
conn=psycopg2.connect(conn_string)
print("Connected!")    
    

##mdb-schema -N Y1718 database postgres # Pipe to postgres?

#List all tables one at a table
##mdb-tables -1 database | xargs mdb-export -I postgres -N Y1718 database  #pipe to postgres



cur = conn.cursor()
#DATABASE = sys.argv[1]
for index,row in dblist.iterrows():
  exists = os.path.isfile(row['file'])
  name=row['file']
  pre="-Ny" + name[:2] + name[3:5]
  print(pre)
  if exists:
    conn.autocommit=True
    print('Read and load Schema of {}'.format(name))
    cur.execute("CREATE SCHEMA y" +name[:2] + name[3:5] +";")
    schema=subprocess.check_output(["mdb-schema","--no-indexes","--no-relations",pre, name, "postgres"])
    cur.execute(schema)
    # Dump data into database
    dbtables=subprocess.check_output(["mdb-tables","-1",name])
    conn.autocommit=False
    for table in dbtables.split('\n'):
      if not table == "" :
#       dbtabledata = subprocess.check_output(["mdb-export","-I postgres",pre,name,"DaysAbsent"])
#      dbtabledata = subprocess.check_output(["mdb-export","-q\'","-Ipostgres",pre,name,table])
# try as csv
        dbtabledata = StringIO(subprocess.check_output(["mdb-export","-H","-dx23x","-X\\",pre,name,table]).replace("|","[]").replace("x23x","|"))
      #print(dbtabledata[:200])
#      cur.execute(dbtabledata)
#      cur.copy_from(dbtabledata,'"y'+name[:2] + name[3:5]+'"."'+table+'"',sep="|")
        cur.copy_expert("COPY " + '"y'+name[:2] + name[3:5]+'"."'+table+'" ' +"FROM STDIN DELIMITER '|' CSV QUOTE '\"' ESCAPE '\\'" ,dbtabledata)
        conn.commit()
  else: 
    print('Missing Databasefile {} with wget module'.format(name))
# Dump the schema for the DB

# Get the list of table names with "mdb-tables"
#table_names = subprocess.Popen(["mdb-tables", "-1", DATABASE],
#                               stdout=subprocess.PIPE).communicate()[0]
#tables = table_names.splitlines()

#print "BEGIN;" # start a transaction, speeds things up when importing
#sys.stdout.flush()

# Dump each table as a CSV file using "mdb-export",
# converting " " in table names to "_" for the CSV filenames.
#for table in tables:
#    if table != '':
#        subprocess.call(["mdb-export", "-I", "mysql", DATABASE, table])

#print "COMMIT;" # end the transaction
#sys.stdout.flush()


#Close the Database
conn.close()