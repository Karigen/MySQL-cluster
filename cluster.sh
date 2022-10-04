#/bin/bash
docker run -it -d -p 3307:3306 --name mysql-master -v ./master/cnf:/etc/mysql/conf.d -v ./master/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 --network mynet mysql:8
docker run -it -d -p 3308:3306 --name mysql-slave-1 -v ./slave-1/cnf:/etc/mysql/conf.d -v ./slave-1/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 --network mynet mysql:8
docker run -it -d -p 3309:3306 --name mysql-slave-2 -v ./slave-2/cnf:/etc/mysql/conf.d -v ./slave-2/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 --network mynet mysql:8