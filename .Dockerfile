# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

ENV HTTP_PROXY=http://172.22.180.180:62920
ENV HTTPS_PROXY=http://172.22.180.180:62929  
# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt 

# Expose the port that the app runs on
EXPOSE 8000

# Define environment variable
ENV NAME World

# Run guardrails start when the container launches
CMD ["guardrails", "start", "--config=./config.py"]
