# Use the official Python Slim image as the base image
FROM python:3.12-slim

# Install the myskoda[cli] package with pip
RUN pip install --no-cache-dir myskoda[cli]==0.9.1

# Set the default command to bash
CMD ["/bin/bash"]
