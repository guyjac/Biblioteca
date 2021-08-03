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
1.1. List all the books in the system.
1.2. Add a book to the system.
1.3. Edit a book in the system.
1.4. Delete a book from the system.
1.5. Search a book in the system by title, author, or publisher.

2. Author module
2.1. List all the authors in the system.
2.2. Add an author to the system.
2.3. Edit an author in the system.
2.4. Delete an author from the system.
2.5. Search an author in the system by firstname, and lastname.

3. Publisher module
3.1. List all the publishers in the system.
3.2. Add a publisher to the system.
3.3. Edit a publisher in the system.
3.4. Delete a publisher from the system.
3.5. Search publishers in the system by name or country.

4. Genre module
4.1. List all the genres in the system.
4.2. Add a genre to the system.
4.3. Edit a genre in the system.
4.4. Delete a genre from the system.
4.5. Search genre in the system by name

5. Member:
5.1. List all the members in the system.
5.2. Add a member to the system.
5.3. Edit a member in the system.
5.4. Delete a member from the system.
5.5. Search members in the system by name.
6. Loans:
7. 
8.1. List all the loan in the system.
9.2. Add a loan to the system.
10.3. Edit a loan in the system.
11.4. Search for a loan in the system by member id or book id.
12.5. Mark loan returned.
