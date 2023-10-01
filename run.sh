#!/bin/bash

#!/bin/bash

# Build the Docker image
docker build -t gita_bot .

# Run the Docker container
docker run -p 8080:80 gita_bot

# Display container information
echo "Docker container for Gita ChatBot is running."
echo "You can access the chatbot at http://localhost:8080"

