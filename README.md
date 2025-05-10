# Deployment-repo

## To run all services
#### 1. Run -> chmod +x ./deploy.sh

## To run with logs in the Terminal:
#### 1. Run deployWithLogs.sh
#### 2. Run docker-compose up --build

## APIs For Testing
#### http://127.0.0.1:5050/publish - post call
#### http://127.0.0.1:5050/api/createAndGetData - get call

### To access DB from Docker Terminal
#### docker exec -it mysql-db mysql -uroot -proot

