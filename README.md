
# 🔗 RAILS BOILERPLATE WITH DOCKER-COMPOSE
<p align="center"> A boilerplate application with rails 6, ruby 3, postgres and docker-compose </p>

Table of content
=================
<!--ts-->
   * [Prerequisites](#prerequisites)
   * [Project Installation](#project-installation)
   * [Run locally](#run-locally)
   * [Database initial setup](#database-initial-setup)
<!--te-->


Prerequisites
============
You need to install locally:
- <a href="https://www.ruby-lang.org"/>Ruby</a>
- <a href="https://guides.rubyonrails.org/v5.0/getting_started.html">Ruby on Rails</a>
- <a href="https://docs.docker.com/get-docker/">Docker</a> 
- <a href="https://docs.docker.com/compose/install/">docker-compose</a>



Project Installation
============
Create a .env file in the project folder with the variables: 
* DB_HOST - (the name of database service in docker-compose file, by default is `db`)
* DB_USERNAME - (by default the user is `postgres`)
* DB_PASSWORD - (you can choose any password)
<p> This variables will store the information of database connections for development/test environments </p>

## For linux
If you are working on Linux, you need to change the ownership of the project files by running in bash: `$ sudo chown -R $USER:$USER .` 


## Building with docker-compose
After configuration of `.env` file, the project is ready to be build.

Now you need to run:
```
docker-compose build
```

Run locally
============
After building the app now you can run:
```
docker-compose up
```
Or for detached mode:

```
docker-compose up -d
```
Database initial setup
============
After building the containers the next step is setting up the development and test databases </br>
Just running:
```
docker-compose run web rails db:create
```

