# Docker Microservices with Load Balancing

This project demonstrates a microservices architecture using Docker containers with Nginx load balancing. It consists of 4 Node.js backend services, a MongoDB database, and an Nginx reverse proxy.

## Prerequisites

- Docker
- Docker Compose
- Git
- Node.js & npm

## Getting Started

1. Clone the repository:

```bash
git clone <repository-url>
cd <repository-name>
```

2. Install dependencies for each service:

```bash
cd nodeapp
npm install
```

3. Install Docker:

- Windows/Mac: Download and install Docker Desktop from [Docker Hub](https://www.docker.com/products/docker-desktop)
- Linux:

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

4. Start the services:

```bash
docker-compose up -d
```

5. Access the application:

```
http://localhost:80
```

## Services & Configuration

### Service Ports

- Nginx: 80
- Backend Services:
  - nodeapp: 3000
  - nodeapp2: 3001
  - nodeapp3: 3002
  - nodeapp4: 3003
- MongoDB: 27017

## Features

- Load balancing across 4 backend services
- Health checks for backend services
- Persistent data storage
- Automatic container restart
- Network isolation

//testing
