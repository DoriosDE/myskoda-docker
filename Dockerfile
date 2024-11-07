# Use the official Python Alpine image as the base image
FROM python:3.12-alpine

# Install any OS dependencies necessary for building Python packages
RUN apk update && \
    apk add --no-cache --virtual .build-deps gcc musl-dev python3-dev libffi-dev openssl-dev && \
    apk add --no-cache bash

# Install the myskoda[cli] package with pip
RUN pip install --no-cache-dir myskoda[cli]

# Remove build dependencies to keep the image size small
RUN apk del .build-deps

# Set the default command to bash (optional)
CMD ["/bin/bash"]
