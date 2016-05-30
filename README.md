# DevOps Training - Versioning of database - Practical - using Docker compose

[![Build Status](https://travis-ci.org/ykandrirody/training-devops-v2-versioning-of-database.svg?branch=master)](https://travis-ci.org/ykandrirody/training-devops-v2-versioning-of-database)

[Get the PDF of this README](https://gitprint.com/ykandrirody/training-devops-v2-versioning-of-database/blob/master/README.md)

# 1 - Preparation (you can be offline after this step)

## 1.1 - Clone the repository locally
```
git clone https://github.com/ykandrirody/training-devops-v2-versioning-of-database.git
```

## 1.2 - Pull and build the Docker containers
```
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml pull
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml build
```

# 2 - Start the practical

##  2.1 - Start all services

```
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml up -d
```

##  2.2 - Test phpmyadmin :
PhpMyAdmin database dev : [http://localhost:33081/](http://localhost:33081/)

PhpMyAdmin database prd : [http://localhost:33082/](http://localhost:33082/)


## 2.3 - Run Liquibase

Do it step by step, and check modifications on PhpMyAdmin

Dev :
```
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_dev_v1.properties update'
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_dev_v2.properties update'
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_dev_v3.properties update'
```

Prd :
```
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_prd_v1.properties update'
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_prd_v2.properties update'
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_prd_v3.properties update'
```

You can launch all of them with :
```
./training-devops-v2-versioning-of-database/run_practical.sh
```

## 4 - Deallocate resources - End of the practical !

```
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml kill
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml rm -f -v -a
```

## 5 - Rebuild the composition after a modification

```
./training-devops-v2-versioning-of-database/rebuild.sh
```
