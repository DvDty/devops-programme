FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y python3-pip

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app/ .

EXPOSE 5000

WORKDIR /app

CMD [ "python3", "./app.py" ]
