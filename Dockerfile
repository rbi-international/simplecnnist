FROM python:3.7
COPY . /clientApp
WORKDIR /clientApp
RUN pip install -r requirements.txt
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:clientApp







