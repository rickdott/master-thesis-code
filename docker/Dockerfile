# Base image found at https://hub.docker.com/r/pytorch/pytorch/tags
FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime

# Install git and jupyter
RUN apt-get update && apt-get install -y git \
    && pip install jupyter

# Upgrade pip
WORKDIR /tmp
RUN python -m pip install --upgrade pip

# Requirements.txt must be in the same folder as this dockerfile, contains the packages
# TODO: Automatically pull requirements from github package?
ADD ./master-thesis-code/docker/requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /workspace

COPY ./hmp-ai /workspace/hmp-ai
RUN python -m pip install -e /workspace/hmp-ai/src