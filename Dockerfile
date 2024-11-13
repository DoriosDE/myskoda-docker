# Use the official Python Slim image as the base image
FROM python:3.12-slim

# Copy requirements.txt to the root directory
COPY requirements.txt /requirements.txt

# Install the requirements (myskoda[cli]) package with pip
RUN pip install --no-cache-dir -r /requirements.txt

# Set the default command to bash
CMD ["/bin/bash"]
