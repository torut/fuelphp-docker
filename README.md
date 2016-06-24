# FuelPHP-docker
## docker-compose for application development by FuelPHP.

## pre execute
```
$ cd app
$ git clone git://github.com/fuel/fuel.git fuel_app
$ rm -rf fuel_app/.git
```

## execute
```
$ cd fuelphp-docker
$ docker-compose up -d
```

## connect to mysql
```
local$ docker exec -it fuel_app /bin/bash
fuel_app$ mysql -h fuel_db -u root -p -D fuel_dev
```

## requirements
```
$ docker -v
Docker version 1.11.2, build b9f10c9

$ docker-compose -v
docker-compose version 1.7.1, build 0a9ab35
```
