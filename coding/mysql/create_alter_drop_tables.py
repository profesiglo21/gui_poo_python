from getpass import getpass
from mysql.connector import connect, Error

# Creating, Altering, and Dropping a Table from an existing database

try:
    with connect(
        host="localhost",
        user=input("Enter username: "),
        password=getpass("Enter password: "),
        database="online_movie_rating"
    ) as connection:
       print(connection)
except Error as e:
    print(e)
