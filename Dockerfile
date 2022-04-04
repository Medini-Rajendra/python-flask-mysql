FROM ubuntu:20.04 #Installs ubuntu 20.04 from Docker Hub
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install vim -y
WORKDIR /code
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]