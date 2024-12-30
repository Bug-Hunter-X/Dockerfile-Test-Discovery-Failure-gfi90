FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip python3-unittest
COPY . /app
WORKDIR /app
CMD ["python3", "-m", "unittest", "discover"]