# Docker Microservices with Load Balancing

This project demonstrates a microservices architecture using Docker containers with Nginx load balancing. It consists of 4 Node.js backend services, a MongoDB database, and an Nginx reverse proxy.

## Architecture

- 4x Node.js backend services (nodeapp, nodeapp2, nodeapp3, nodeapp4)
- 1x MongoDB database
- 1x Nginx load balancer
- Custom Docker network (net-1)
- Persistent volume (vol-1)

## Prerequisites

- Docker
- Docker Compose
- Git

## Configuration

### Service Ports

- Nginx: 80
- Backend Services:
  - nodeapp: 3000
  - nodeapp2: 3001
  - nodeapp3: 3002
  - nodeapp4: 3003
- MongoDB: 27017

### MongoDB Credentials

- Username: mongo
- Password: 123456

## Features

- Load balancing across 4 backend services
- Health checks for backend services
- Persistent data storage
- Automatic container restart
- Network isolation

## Running the Application

1. Clone the repository
2. Start the services:

```bash
docker-compose up -d
```

3. Access the application:

```
http://localhost:80
```

## Health Checks

Backend services include health checks with:

- 10-second intervals
- 5-second timeouts
- 6 retries
- 60-second start period

## Networks and Volumes

- Network `net-1`: Internal communication between services
- Volume `vol-1`: Persistent storage for MongoDB data

## Notes

- Nginx configuration is mounted from `./nginx/load-balancer.conf`
- Backend services are automatically load balanced
- All services restart automatically on failure
