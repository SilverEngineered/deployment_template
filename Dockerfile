FROM ubuntu:18.04

RUN apt-get update -y 
RUN apt-get install -y python3-pip python3-dev curl

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install -r requirements.txt
RUN export LC_ALL=C.UTF-8
RUN export LANG=C.UTF-8
COPY . /app
EXPOSE 80
ENTRYPOINT [ "python3", "app.py" ]

