FROM ubuntu:20.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# apt-get update
# install unzip
# install wget
# install python3-pip
# install gnupg2
# install curl
# install ca-certificates
# apt-get clean
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    unzip=6.0-25ubuntu1 \
    wget=1.20.3-1ubuntu1 \
    python3-pip=20.0.2-5ubuntu1.1 \
    gnupg2=2.2.19-3ubuntu2 \
    curl=7.68.0-1ubuntu2.2 \
    ca-certificates=20190110ubuntu1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# update pip
RUN python3 -m pip install --upgrade pip

# install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
    apt-get -y update && \
    apt-get install -y --no-install-recommends google-chrome-stable

# install chromedriver
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip && \
    unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/
