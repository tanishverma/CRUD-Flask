FROM python:3.7-alpine
WORKDIR /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt
COPY . /app/
ENV FLASK_APP crud.py
CMD flask run --host=0.0.0.0