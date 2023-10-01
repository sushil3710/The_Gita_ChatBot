# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
RUN python -m venv chatbotenv

# Activate the virtual environment
RUN chatbotenv/Scripts/activate

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt 
RUN python ingest.py
EXPOSE 8501
# Run the Bash script to start your chatbot
CMD ["bash", "run.sh"]
