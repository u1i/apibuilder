Run API Builder with MySQL on your machine without the nodejs dependency mess. Thanks to the Docker magic!


## 1 - Run MySQL on your local machine

docker run --rm --name mysql-$RANDOM -p 3306:3306 -e MYSQL_ROOT_PASSWORD=axway -d mysql



## 2 - Create DB table and data

Just connect to the database using your favorite method. You could as well exec into the running mysql container using this command:

docker exec -it a059e9dd9bd2 bash

and then connect to the database like this:

mysql -u root -paxway

UPDATE: you need to change the MySQL authentication mechanism in order for API Builder to work:

`ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'axway';`

`flush privileges;`



## 3 - Run preconfigured API Builder 4.0 standalone docker container

docker run -it -p 8080:8080 u1ih/apibuilder-standalone bash



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
