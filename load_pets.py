import sqlite3 as lite
import sys

con = lite.connect('pets.db')

with con:

    cur = con.cursor()
    cur.execute("INSERT INTO Person VALUES(1,'James','Smith',41)")
    cur.execute("INSERT INTO Person VALUES(2,'Diana','Greene',23)")
    cur.execute("INSERT INTO Person VALUES(3,'Sara','White',27)")
    cur.execute("INSERT INTO Person VALUES(4,'William','Gibson',23)")

    cur.execute("INSERT INTO Pet VALUES(1,'Rusty','Dalmation',4,1)")
    cur.execute("INSERT INTO Pet VALUES(2,'Bella','AlaskanMalamute',3,0)")
    cur.execute("INSERT INTO Pet VALUES(3,'Max','CockerSpaniel',1,0)")
    cur.execute("INSERT INTO Pet VALUES(4,'Rocky','Beagle',7,0)")
    cur.execute("INSERT INTO Pet VALUES(5,'Rufus','CockerSpaniel',1,0)")
    cur.execute("INSERT INTO Pet VALUES(6,'Spot','Bloodhound',2,1)")

    cur.execute("INSERT INTO Person_Pet VALUES(1,1)")
    cur.execute("INSERT INTO Person_Pet VALUES(1,2)")
    cur.execute("INSERT INTO Person_Pet VALUES(2,3)")
    cur.execute("INSERT INTO Person_Pet VALUES(2,4)")
    cur.execute("INSERT INTO Person_Pet VALUES(3,5)")
    cur.execute("INSERT INTO Person_Pet VALUES(4,6)")





