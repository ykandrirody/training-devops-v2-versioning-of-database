echo 
echo r_dev_v1
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_dev_v1.properties update'

echo 
echo r_dev_v2
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_dev_v2.properties update'

echo 
echo r_dev_v3
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_dev_v3.properties update'

echo 
echo r_prd_v1
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_prd_v1.properties update'

echo 
echo r_prd_v2
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_prd_v2.properties update'

echo 
echo r_prd_v3
docker exec -it liquibase.global bash -c 'java -jar liquibase-3.4.2.jar --defaultsFile=r_prd_v3.properties update'
