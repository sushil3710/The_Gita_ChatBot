#!/bin/bash

#!/bin/bash

# Build the Docker image
docker build -t gita_chatbot .

# Run the Docker container
docker run -d -p 8080:80 gita_chatbot

# Display container information
echo "Docker container for Gita ChatBot is running."
echo "You can access the chatbot at http://localhost:8080"

