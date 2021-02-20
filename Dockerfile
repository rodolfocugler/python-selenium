FROM ubuntu:18.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && \
    apt-get install -y \
    python3-pip \
    chromium-driver

RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install webdriver-manager
RUN python3 -m pip install selenium 
