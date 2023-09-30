#!/bin/bash

# Start your chatbot using Python
python ingest.py &

# Run your model (modify this as needed)
chainlit run model.py -w
