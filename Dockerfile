FROM python:3.9

RUN apt-get update && \
    apt-get install -y chromium-driver

RUN pip install --upgrade pip

RUN pip install webdriver-manager
RUN pip install selenium

WORKDIR /usr/src/app 
