# Import script for Analytics Service
Write-Host "Importing Analytics Service Docker image..."
docker load -i analytics-service.tar
Write-Host "Analytics Service image imported successfully!"