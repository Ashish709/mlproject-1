# Use an official Python runtime as a parent image
FROM python:3.7-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app


# Install any needed dependencies specified in requirements.txt
RUN apt update -y

RUN apt-get update && pip install -r requirements.txt

# Run app.py when the container launches
CMD ["python3", "app.py"]