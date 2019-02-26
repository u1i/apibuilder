# API Builder - Docker Container

## Just give me API Builder & run it

`docker run -d -p 8080:8080 u1ih/apibuilder run`

--> open http://localhost:8080/console

## I also want to get commandline access, install connectors and such!

`docker run -it -p 8080:8080 u1ih/apibuilder bash`

Then inside the container:

`cd myproject`   
`npm start`

--> open http://localhost:8080/console
