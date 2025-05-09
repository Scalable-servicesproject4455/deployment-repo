# Deployment-repo

## Step 01:

#### git clone [temperature-service](https://github.com/Scalable-servicesproject4455/temperature-service.git)
#### git clone [assisstant-service](https://github.com/Scalable-servicesproject4455/assistant-service.git)

## Step 02:
#### docker-compose up --build

## APIs For Testing
#### http://127.0.0.1:5050/publish - post call
#### http://127.0.0.1:5050/api/createAndGetData - get call

### To access DB from Docker Terminal
#### docker exec -it mysql-db mysql -uroot -proot

