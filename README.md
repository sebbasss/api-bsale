Back-end API for Bsale hiring process.

Description: This rails app is a simple API used to provide information about different products to the front-end part of a hiring process homework. It accesses an external DB hosted in AWS and only accepts GET requests.

it used the following gems and versions:
rails: 6.1.6
pg: 1.1
puma: 5.0
mysql2
rack-cors
pg_search

In order to launch it, after cloning the repository, Ruby > 0.0.3  and rails > 6.1.6 have to be installed.
Also, before running the command 'rails s' (used to launch the app in localhost/3000), you have to create the database, running db:create.

This project is hosted on heroku.
