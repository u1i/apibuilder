# API Builder & MySQL Quick Start

Creating a CRUD interface for MySQL tables – with API Builder and without coding!

You need these things on your Windows/Mac/Linux:

* Docker
* NodeJS
* Web Browser
* Terminal / Command Prompt
* Text Editor (e.g. Atom)

## 1 - Run MySQL on your local machine

`docker run --rm --name mysql-$RANDOM -p 3306:3306 -e MYSQL_ROOT_PASSWORD=axway -d mysql:5.7.24`


## 2 - Create DB table and data

Run phpMyAdmin to create a database and a table:

`docker run --rm --name myadmin-$RANDOM -d -e MYSQL_ROOT_PASSWORD=axway -e PMA_HOST=172.17.0.1 -p 8087:80 phpmyadmin/phpmyadmin`

The GUI is now available at http://localhost:8087/index.php

Alternatively, exec into the running mysql container using this command:

`docker exec -it a059e9dd9bd2 bash`

and then connect to the database like this:

`mysql -u root -paxway`

## 3 - Install API Builder and Create a Project

`npm install -g @axway/api-builder`

## 4 - Install MySQL Connector


npm install @axway/api-builder-plugin-dc-mysql

## 5 - Edit the mysl connector config 

vi conf/mysql.default.js (or emacs or whatever you use)


enter correct host (docker host IP or mysql IP), user root, password axway, and the database name you created



modelAutogen: true



## 6 - Start API Builder


cd /root/myproject

npm start



The model and API endpoints for your MySQL database table should automatically show up in Builder when you open http://localhost:8080/console/project/apidocs 




[Tech Enablement](https://github.com/Axway/api-builder-standalone-tech-enablement)
