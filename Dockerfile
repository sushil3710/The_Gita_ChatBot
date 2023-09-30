# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Download and place your LLM model in the container
RUN wget -O llama-2-7b-chat.ggmlv3.q8_0.bin https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML/raw/main/llama-2-7b-chat.ggmlv3.q8_0.bin

EXPOSE 8501

# Run the Bash script to start your chatbot
CMD ["bash", "start.sh"]
