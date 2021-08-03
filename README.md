# Biblioteca
A 3-tier web application using the PonyORM and Bottle packages in Python.

- Core Python files (setup.py, entity.py, server.py, config.py)
- /data You can put your dummy data here
- /db Directory used to store the sqlite database
- /views Directory used to store the templates for the app
- /docs Any supporting documents (.doc .pdf .png .jpg .ppt .txt)

## Data requirements

The system has the following tables:
Book: id, title, author (from the author table), publisher (from the publisher table), genre (from the genre table), year.
Author: id, firstname, lastname.
Publisher: id, name, country.
Genre: id, name.
Member: id, name, lastname, phone number, address, city, country.
Loan: id, member (from the Member table), books (from the book table), date of loan out, date due.
