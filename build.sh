# Login to Docker registry
echo "Logging into registry.nsec.ir..."
sudo docker login registry.nsec.ir

# Build Docker image
echo "Building Docker image..."
sudo docker build -t xss .

# Tag the image with the relevant tag
echo "Tagging Docker image..."
sudo docker tag xss:latest registry.nsec.ir/challenge-repo/active-passive-recon:1.0.0

# Push the image to the registry
echo "Pushing Docker image to registry..."
sudo docker push registry.nsec.ir/challenge-repo/xss:1.0.0

echo "Build and push complete!"
