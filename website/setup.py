import json
import config
from entities import *
'''
	Student REG: 1702267

    ===========
    Setup module
    ===========

    The setup module should have all the methods that have to be executed before
    the application is started (i.e. seeding the database with data.).
'''

#######################################################
### setup methods
#######################################################

# Create a method here which will read DB_DUMP_FILE_NAME (json file that will be used to seed the database)
# Method will populate the database given this date.

@db_session
def populate_database(db_dump_file_name):
	#Open the JSON file in read mode.
	dump_data = json.load(open(db_dump_file_name, 'r'))
	
	#########################################################
	### Loop through the JSON file and populate the database. 
	#########################################################
	
	for rows in dump_data['Author']:
		author = Author(firstname = rows['firstname'], lastname = rows['lastname'])
		
	for rows in dump_data['Publisher']:
		publisher = Publisher(name = rows['name'], country = rows['country'])
		
	for rows in dump_data['Genre']:
		genre = Genre(name = rows['name'])
		
	for rows in dump_data['Book']:
		# We have to fetch ID's from other items when creating books, as they reference other entities.
		# Author names in the book table are stored in a single string, so we must split it.
		# Once split, we use a lambda to find the corresponding author in the author table.
		names = rows['author'].split()
		author = Author.get(lambda au: au.firstname == names[0] and au.lastname == names[1])
		genre = Genre.get(name = rows['genre'])
		publisher = Publisher.get(name = rows['publisher'])
		book = Book(title = rows['title'], year = rows['year'], author = author, publisher = publisher, genre = genre )
	
	for rows in dump_data['Member']:
		member = Member(firstname = rows['firstname'], lastname = rows['lastname'], phone_num = rows['phone_num'], address = rows['address'], city = rows['city'], country = rows['country'] )
	
	for rows in dump_data['Loan']:
		# Similar to above, we must split the member name.
		names = rows['member'].split()
		member = Member.get(lambda mem: mem.firstname == names[0] and mem.lastname == names[1])
		returns = rows['returns']
		loan = Loan(member = member, loan_out_date = rows['loan_out_date'], loan_due_date = rows['loan_due_date'], returns = returns )
		#Load in multiple books. split into an array and loop add them
		books = rows['books'].split(",")
		for b in books:
			bk = Book.get(title = b)
			loan.books.add(bk)
		
	
######################################
### Queries
######################################

#Additional queries can be placed here.

#######################################################
### Main function
#######################################################
if __name__ == "__main__":
	# Call populate database. Pass the global var containing the JSON file.
	populate_database(config.DB_DUMP_FILE_NAME) 
	pass
