import json
import config
from pony.orm import *

'''
Student REG: 1702267


The entity module contains all the entities of your application.
We will be using PonyORM; please refer to the slides and moodle resources
for more information

Create the tables for the database.

'''

# instance of the class Database to create and map tables
db = Database()

#######################################################
### Begin entities declaration
#######################################################
	
class Author(db.Entity):
	#id = Required(int)
	firstname = Required(str)
	lastname = Required(str)
	#We need reverse attributes. Authors write books.
	books = Set('Book')
	
class Publisher(db.Entity):
	#id = Required(int)
	name = Required(str)
	country = Required(str)
	#We need reverse attributes. Publishers write books.
	books = Set('Book')
	
class Genre(db.Entity):
	#id = Required(int)
	name = Required(str)
	#We need reverse attributes. Genres write books.
	books = Set('Book')
	
class Book(db.Entity):
	# ID's are created by default in PONY...? 
	#id = Required(int) 
	title = Required(str)
	year = Required(str)
	# Generally speaking, a book will have a single author and publisher.
	author = Required('Author')
	publisher = Required('Publisher')
	genre = Required('Genre')
	# Reverse attribute. A book is loaned out against a loan.
	loans = Set('Loan')
	
class Member(db.Entity):
	#id = Required(int)
	firstname = Required(str)
	lastname = Required(str)
	# Phone num as STR so we can store 0 at the start
	phone_num = Required(str)
	address = Required(str)
	city = Required(str)
	country = Required(str)
	#Reverse attribute for loans.
	loans = Set('Loan')

class Loan(db.Entity):
	#id = Required(int)
	# A loan should have a single member.
	member = Required('Member')
	# But can have multiple books? Depends on if we want a separate loan for each book.
	books = Set('Book')
	# We could make these datetime, if we can import datetime?
	loan_out_date = Required(str)
	loan_due_date = Required(str)
	returns = Required(str)

#######################################################
### END entities declaration
#######################################################

#######################################################
### The following 2 instructions bind the db to the
### SQLite file and generate the tables if needed.
#######################################################
# binding the entities to an sqlite database
db.bind('sqlite', config.DB_FILE_NAME, create_db=True)

# create the tables
db.generate_mapping(create_tables=True)
