# Use an official Python runtime as a parent image
FROM python:3.11.4

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
RUN python -m venv chatbot
RUN /bin/bash -c "source chatbot/bin/activate && pip install --upgrade pip "

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN python ingest.py

EXPOSE 8080
# Run the Bash script to start your chatbot
CMD ["chainlit", "run", "model.py", "-w"]
