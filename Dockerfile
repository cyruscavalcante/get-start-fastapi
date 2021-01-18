# Pull base image
FROM python:3.8-slim-buster

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app/

# Install dependencies
RUN pip install pipenv
COPY Pipfile  /app/
RUN pipenv lock --pre
RUN pipenv install --system --dev

COPY . /app/

EXPOSE 8000