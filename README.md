# 📦 Deployment Repository

## 🧟‍♂️🧟‍♀️ The Team

 - `Sindhu H R`
 - `Akshata Kulkarni`
 - `Rakshith L S`
 - `Akash S`
 - `Samuel Johnson`
-----

This repository is used to deploy all three microservices:

- 🔆 `light-service`  
- 🌡️ `temperature-service`  
- 🧠 `assistant-service`

These services are powered by **MySQL** for persistent storage and communicate asynchronously using **RabbitMQ** as the middleware, ensuring **loose coupling** and  **scalability**.

---

## 🛠️ Prerequisites

Ensure you have the following installed:

- Docker
- Git
- Bash terminal (Linux/macOS/Windows)

---

## 🚀 How to Deploy All Services

### Clone the Repositories

The deployment script will automatically handle this. No manual cloning required.

### Run the Deployment Script

Make the script executable (if not already):

```bash
chmod +x ./deploy.sh
```

Then run it:

```bash
./deploy.sh
```

This will:
- Clone the required microservices (if not already present or delete old versions)
- Build Docker containers
- Start all services using Docker Compose

---

## 🧾 To Run Services with Live Logs

If you want to deploy the services **and see real-time logs**, follow these steps:

```bash
./deployWithLogs.sh
docker-compose up --build
```

This will build and run all services, outputting logs to your terminal.

---

## 🌐 API Endpoints for Testing

Use Postman, curl, or your preferred HTTP client to test the microservices:

| Endpoint | Method | Description |
|----------|--------|-------------|
| `http://127.0.0.1:5050/publish` | `POST` | Publishes a message (consumed by assistant-service) |
| `http://127.0.0.1:5050/api/createAndGetData` | `GET` | Triggers data creation and fetches data from temperature-service |

---

## 🗄️ Accessing MySQL Database from Docker

To connect to the MySQL container from the terminal:

```bash
docker exec -it mysql-db mysql -uroot -proot
```

This gives you direct access to all databases like `temp_db`, `light_db`, or `security_db`.

---

## 📦 Tech Stack

- **Flask** for microservices (Python-based)
- **MySQL** for data persistence
- **RabbitMQ** for message brokering between services
- **Docker** for containerization
- **Docker Compose** for orchestration
  
---

## 🧹 Cleanup Commands (Optional)

To remove orphaned containers:

```bash
docker-compose down --remove-orphans
```

To remove all stopped containers:

```bash
docker container prune
```

To remove everything (⚠️ use with caution):

```bash
docker system prune -a --volumes
```

---
