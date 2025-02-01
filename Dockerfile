#FROM python:3.12-slim
#WORKDIR /app
#COPY . /app/
#RUN pip install --upgrade pip \
#    && pip install -r requirements.txt
#EXPOSE 8080
#CMD ["python", "bot.py"]

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip install -U pip && pip install -U -r requirements.txt
WORKDIR /MW-Pm-Shortner-Bot

COPY . .

CMD ["python3", "bot.py"]
