# Biblioteca
A 3-tier web application using the PonyORM and Bottle packages in Python.

- ./ - Core Python files (setup.py, entity.py, server.py, config.py)
- /data/ - You can put your dummy data here
- /db/ - Directory used to store the sqlite database
- /views/ - Directory used to store the templates for the app
- /docs/ - Any supporting documents (.doc .pdf .png .jpg .ppt .txt)

## Data requirements

The system has the following tables:

Book: id, title, author (from the author table), publisher (from the publisher table), genre (from the genre table), year.

Author: id, firstname, lastname.

Publisher: id, name, country.

Genre: id, name.

Member: id, name, lastname, phone number, address, city, country.

Loan: id, member (from the Member table), books (from the book table), date of loan out, date due.

## Functions

The system has 6 different modules with the following functionalities:

1. Book module
List all the books in the system.

Add a book to the system.

Edit a book in the system.

Delete a book from the system.

Search a book in the system by title, author, or publisher.

2. Author module
List all the authors in the system.

Add an author to the system.

Edit an author in the system.

Delete an author from the system.

Search an author in the system by firstname, and lastname.

3. Publisher module

List all the publishers in the system.

Add a publisher to the system.

Edit a publisher in the system.

Delete a publisher from the system.

Search publishers in the system by name or country.

4. Genre module
List all the genres in the system.

Add a genre to the system.

Edit a genre in the system.

Delete a genre from the system.

Search genre in the system by name

5. Member:
List all the members in the system.

Add a member to the system.

Edit a member in the system.

Delete a member from the system.

Search members in the system by name.

6. Loans:
List all the loan in the system.

Add a loan to the system.

Edit a loan in the system.

Search for a loan in the system by member id or book id.

Mark loan returned.

