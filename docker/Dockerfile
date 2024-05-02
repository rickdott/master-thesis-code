# Base image found at https://hub.docker.com/r/pytorch/pytorch/tags
FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime

# Upgrade pip
RUN python -m pip install --upgrade pip

# Requirements.txt must be in the same folder as this dockerfile, contains the packages
# TODO: Automatically pull requirements from github package?
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# Install git?
# Clone thesis-code repository?