### pip install C:\python-mysql\mysqlclient-1.4.6-cp39-cp39-win_amd64.whl

#!/usr/bin/python
# -*- coding: utf-8 -*-
 
import MySQLdb as mdb
import sys
 
con = None
 
try:
 
    con = mdb.connect("localhost","testUser", "A4min@123","hr");
 
    cur = con.cursor()
    cur.execute("SELECT VERSION()")
 
    data = cur.fetchone()
   
    print("Database version : %s " % data)
   
except MySQLdb.Error as e:
 
    print("Error %d: %s" % (e.args[0],e.args[1]))
    sys.exit(1)
   
finally:    
       
    if con:    
 
        con.close()