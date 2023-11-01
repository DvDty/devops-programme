FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y python3-pip

RUN mkdir -p /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app/app.py /app

EXPOSE 5000

WORKDIR /app

CMD [ "python3", "./app.py" ]
