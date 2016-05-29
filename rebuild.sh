docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml kill
docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml rm -f -v -a

docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml build

docker-compose -f ./training-devops-v2-versioning-of-database/docker-compose.yml up -d

#Wait all components to start.
sleep 5  # Waits 5 seconds.
