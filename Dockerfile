# Parent image
FROM python:3.7

# Author email
LABEL maintainer="malxao666@gmail.com"

# Python environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Copying files from current dir to /app in a container
COPY . /app

# Specifying working dir
WORKDIR /app

# Installing python packages without pip caching
RUN pip install --no-cache-dir -r requirements.txt