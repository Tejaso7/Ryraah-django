FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR /app

RUN apt-get update \
    && apt-get install -y gcc libpq-dev build-essential curl libxml2-dev libxslt-dev libjpeg-dev zlib1g-dev wkhtmltopdf \
    && apt-get clean

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .
