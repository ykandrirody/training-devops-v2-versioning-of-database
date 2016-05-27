# DevOps Training - Versioning of database - Practical - using Docker compose

[![Build Status](https://travis-ci.org/ykandrirody/training-devops-v2-versioning-of-database.svg?branch=master)](https://travis-ci.org/ykandrirody/training-devops-v2-versioning-of-database)

# 1 - Preparation (you can be offline after this step)

## 1.1 - Clone the repository locally
```
git clone https://github.com/ykandrirody/training-devops-v2-versioning-of-database.git
```

## 1.2 - Download dependencies
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
http://localhost:8081/
http://localhost:8082/

## 2.3 - Run Liquibase
```
docker exec -it liquibase.global bash -c 'cd $BUILDENV; exec "/app/run_dev_v1.sh"'
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=run_dev_v1.properties update'


docker exec -it liquibase.global bash -c 'cd $BUILDENV; exec "/app/run_dev_v2.sh"'
docker exec -it liquibase.global bash -c 'cd $BUILDENV; exec "/app/run_dev_v3.sh"'
docker exec -it liquibase.global bash -c 'cd $BUILDENV; exec "/app/run_prd_v1.sh"'
docker exec -it liquibase.global bash -c 'cd $BUILDENV; exec "/app/run_prd_v2.sh"'
docker exec -it liquibase.global bash -c 'cd $BUILDENV; exec "/app/run_prd_v3.sh"'
```

## 4 - Deallocate resources

Stop all containers :
```
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml kill
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml rm -f -v -a
```
Confirm with : y
