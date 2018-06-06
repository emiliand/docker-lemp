# Dockerized LEMP Environment

## What's this all about?
I like to try out new web (PHP) based apps. I also need to test existing apps on PHP 7.

This repo makes it really simple with docker-compose but is in no way production ready.
Configs are minimal and security hasn't been taken into consideration.

It's purely for dev / testing / fun purposes.

## How do I use it?
1. Extract your application to: `./app`
2. Run `docker-compose up`
3. Configure your application to use the following DB settings:
    * Host / Server: db
    * Username: root
    * Password: password
    * Database Name: application

### Installing PHP modules
Edit: `./php/Dockerfile` and add the module name to a new
`RUN` instruction line. For example to add the `redis` PHP module:
```
RUN /usr/local/bin/docker-php-ext-install pdo pdo_mysql

RUN /usr/local/bin/docker-php-ext-install redis
```
Docker caches the resulting changes from instructions in image layers.
By adding a new RUN line we avoid downloading and building the existing modules again.

# Common tasks
To make things a little easier there's a Makefile that helps make various tasks a
bit quicker / safer:

* `make` restarts the docker-compose cluster
* `make up` builds and brings the cluster up
* `make stop` you guessed it: stops the cluster
* `make interactive` brings the cluster up in the foreground
* `make clean` removes the contents of `./db/data` - **DESTRUCTIVE**
