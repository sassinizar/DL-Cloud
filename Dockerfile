# syntax=docker/dockerfile:1

FROM python:3.11.5


COPY requirements.txt .

RUN pip install -r requirements.txt 

RUN pip install opencv-python-headless

COPY . .

Expose 5000

CMD [ "flask", "run", "--host=0.0.0.0"]
