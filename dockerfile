# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]


# Install Docker Desktop
# Sign in to Dockerhub and Docker Desktop
# Docker Desktop:
# › Check docker install: cli -› "docker"
# › Pull the hello-world image and run it
#
# Build docker image: docker build -t mlops-docker-demo .
# Run the container: docker run -p 5000:5000 mlops-docker-demo
# Tag your image: docker tag mlops-docker-demo ankitk75/mlops-docker-demo:latest1
# Assure that you're logged in: docker login
# Push image to dockerhub: docker push ankitk75/mlops-docker-demo:latest1
# Pull image from dockerhub: docker pull ankitk75/mlops-docker-demo:latest1
# Run the Pulled image: docker run -p 5000:5000 ankitk75/mlops-docker-demo:latest1