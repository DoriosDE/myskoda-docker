# Use the official Python Ubuntu image as the base image
FROM python:3.10-slim

# Install OS dependencies necessary for building Python packages
RUN apt-get update && \
    apt-get install -y gcc python3-dev libffi-dev libssl-dev && \
    rm -rf /var/lib/apt/lists/*

# Install the myskoda[cli] package with pip
RUN pip install myskoda[cli]

# Set the default command to bash (optional)
CMD ["bash"]
