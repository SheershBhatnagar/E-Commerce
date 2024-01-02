import mysql.connector as sql

mydb = sql.connect(
  host="localhost",
  user="root",
  password="password"
)

print(mydb)
