from getpass import getpass
from mysql.connector import connect, Error

# 1. Establishing a DB Connection
try:
    with connect(
        host="localhost",
        user=input("Enter username: "),
        password=getpass("Enter password: "),
    ) as connection:
       create_db_query = "CREATE DATABASE online_movie_rating"
       with connection.cursor() as cursor:
           cursor.execute(create_db_query)
except Error as e:
    print(e)

# Alternative way using UTF8
# CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;