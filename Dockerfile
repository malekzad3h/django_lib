FROM python:3.7-alpine
MAINTAINER Cosmos Ltd

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDiR /app
COPY ./app /app

RUN adduser -D user
USER user
