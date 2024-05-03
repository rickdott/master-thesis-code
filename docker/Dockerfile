# Base image found at https://hub.docker.com/r/pytorch/pytorch/tags
FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime

# Install git and jupyter
RUN apt-get update && apt-get install -y git \
    && pip install jupyter

# Install hmp-ai python package
WORKDIR /tmp
RUN git clone https://github.com/rickdott/hmp-ai.git \
    && pip install ./hmp-ai/src

# Upgrade pip
RUN python -m pip install --upgrade pip

# Requirements.txt must be in the same folder as this dockerfile, contains the packages
# TODO: Automatically pull requirements from github package?
ADD requirements.txt .
RUN python -m pip install -r requirements.txt

WORKDIR /workspace

# Get code for visualizing and training models
RUN git clone https://github.com/rickdott/master-thesis-code.git
