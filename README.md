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
