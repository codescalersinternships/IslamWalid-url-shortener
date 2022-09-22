FROM python:3.10

WORKDIR /url-shortener-app

COPY . /url-shortener-app

RUN pip install -r requirements.txt

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

EXPOSE 8000

CMD [ "./manage.py", "runserver", "0.0.0.0:8000" ]
