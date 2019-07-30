FROM python:2.7
LABEL maintainer "hiroaki aizawa <aizawan@users.noreply.github.com>"

RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends \
    texlive-full vim \
    && rm -rf /var/lib/apt/lists/*

RUN pip install six numpy
