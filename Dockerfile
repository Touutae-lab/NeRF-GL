# using nvidia/cuda as builder images
FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

# install simple package
RUN apt-get -y update
RUN apt-get install -y curl \
    git \
    build-essential \
    cmake
# install python
RUN apt-get install -y python3

# install pip package
RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    rm get-pip.py

RUN pip install tensorflow
