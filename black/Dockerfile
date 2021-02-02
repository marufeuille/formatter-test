FROM python:3.9-buster
ADD . /workspace
WORKDIR /workspace
RUN apt update && apt upgrade -y
RUN pip install black