# The Gita ChatBot

## Introduction

The Gita ChatBot is an interactive chatbot designed to provide information, answer questions, and engage in conversations related to the Bhagavad Gita, an ancient Hindu scripture. This chatbot is a useful tool for those who want to learn more about life lessons and philosophy through Bhagavad Gita..

## Requirements

Before using the Gita ChatBot, you need to ensure that you have the following requirements in place:

- Python 3.x installed on your system.
- Pip package manager installed.
- [llama-2-7b-chat.ggmlv3.q8_0.bin](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGML/blob/main/llama-2-7b-chat.ggmlv3.q8_0.bin) language model from Hugging Face. This model is required for chatbot functionality. It should be present in your main project directory.

## Installation & setup (On Local Machine)

Follow these steps to set up and install the Gita ChatBot:

1. Clone the repository to your local machine:
2. Navigate to the project directory:
3. Download and move llama-2-7b-chat.ggmlv3.q8_0.bin to your main repo directory:
4. Create a virtual environemnt using: python -m venv chatbotenv:
5. Activate the virtual environment: chatbotenv\Scripts\activate:
6. Install all the requirements using: pip install --trusted-host pypi.python.org -r requirements.txt

Now to Train the llama2 with The Thagavad Gita and Open the Chatbot run:

1. python ingest.py : It is used to create vector store and train the llama2 with the provided Bhagavad Gita
2. chainlit run model.py -w  : Opens he web app user interface of the The Gita Chatbot on your local machine
   --Interact with the chatbot by typing in your questions or messages related to the Bhagavad Gita.

Command Set after moving to the main directory:
- `python -m venv chatbotenv`
- `chatbotenv\Scripts\activate` (For Windows)
- `source chatbotenv/bin/activate` (For Linux/macOS)
- `pip install --trusted-host pypi.python.org -r requirements.txt`
- `python ingest.py`
- `chainlit run model.py -w`

## Docker Image

This repository has been Dockerized, making it easy to run the Gita Bot in a containerized environment. The Docker image is publicly available and can be hosted and used by anyone.

### Docker Image Repository

You can find the Docker image for this repository at:

[sushil3710/gita_bot:latest](https://hub.docker.com/r/sushil3710/gita_bot)

### How to Dockerize Image

To dokerize build and then run, use bash script to build  and run the docker repo after pulling it to local environment

-`./run.sh  or bash run.sh` 

### How to Host the Docker Image

To host and run the Gita Bot using the Docker image, pull the repo and use the following command:

-`docker pull sushil3710/gita_bot:latest`
-`docker run -p 8080:80 sushil3710/gita_bot:latest`




## Kubernetes manifest files 

1. The Git Repo and Docker image also contains the deployment.yml and service.yml files which are used to host the docker image onto a ecternal IP address
2. Use the give commands to host the ChatBot on external servers after pulling the docker image 
- `kubectl apply -f deployment.yml`
- `kubectl apply -f service.yml`
- `kubectl get deploy -o wide`
- `kubectl get pod -o wide`

Use last two commands to get the external Ip address and port number where the docker image will be hosted


## Python libraries used

-`chainlit`
-`pypdf`
-`langchain`
-`torch`
-`accelerate`
-`bitsandbytes`
-`transformers`
-`ctransformers`
-`sentence_transformers`
-`faiss_cpu`


## Workings:

<img src="./pics/pic1.png" width="280" height="400">
<img src="./pics/pic2.png" width="280" height="400">



## License

This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute it according to the terms of the license.