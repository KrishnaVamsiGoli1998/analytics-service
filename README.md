# Analytics Service

Analytics data microservice for the Scalable Microservices Application.

## Features

- Collect and analyze task data
- Generate reports and insights
- Real-time analytics dashboard support

## Prerequisites

- Docker Desktop
- Node.js (for development)
- Kubernetes (optional, for k8s deployment)

## Quick Start

### Using Pre-built Docker Image

1. Import the Docker image:

   ```
   cd docker-image
   .\import.ps1
   ```

2. Start the service:
   ```
   cd ..
   docker-compose up -d
   ```

### Building from Source

1. Build and start the service:
   ```
   docker-compose up -d --build
   ```

### Kubernetes Deployment

1. Apply the Kubernetes configuration:

   ```
   kubectl apply -f k8s-deployment.yaml
   ```

2. Check the deployment status:
   ```
   kubectl get deployments
   kubectl get pods
   kubectl get services
   ```

## API Endpoints

- `GET /analytics` - Get all analytics data
- `GET /analytics/tasks` - Get task-related analytics
- `GET /analytics/users` - Get user-related analytics
- `GET /analytics/performance` - Get performance metrics

## Environment Variables

Create a `.env` file with the following variables:

```
DB_USER=your_db_user
DB_PASSWORD=your_db_password
DB_HOST=your_db_host
DB_PORT=your_db_port
DB_NAME=your_db_name
```

## Development

1. Install dependencies:

   ```
   npm install
   ```

2. Start the development server:
   ```
   npm start
   ```

## Docker Commands

- Build the image:

  ```
  docker build -t analytics-service .
  ```

- Run the container:

  ```
  docker run -p 4003:4003 --env-file .env analytics-service
  ```

- Save the image:

  ```
  docker save analytics-service:latest -o analytics-service.tar
  ```

- Load the image:
  ```
  docker load -i analytics-service.tar
  ```
