## Template docker-compose Spring Boot PostgreSql

A template to build and connect a Spring Boot container with a Postgres database

1. Clone or download project
2. Build your Spring Boot project with `mvn package -Dmaven.test.skip=true` (this way you can build the .jar without running into the error of a not running database)
3. Copy the new spring-boot-app.jar from the **/target** folder of your project into the **web** folder of this repo.
4. The folder **db/schemas** houses an .sql file to create tables or populate them with data
5. Navigate to the main folder holding the ` docker-compose.yml` file
6. Run `docker-compose up`  or alternatively `sudo docker-compose up --build` to force overwrite the old image

## Possibly helpful at some point
Stop all running containers: `docker stop $(docker ps -aq)`
Remove all containers `docker rm $(docker ps -aq)`

