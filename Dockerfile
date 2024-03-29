FROM python:3.11-slim-buster

COPY requirements.txt /usr/src/app/
WORKDIR /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app/

CMD [ "python", "app.py" ]