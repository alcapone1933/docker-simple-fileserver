FROM python:latest

RUN mkdir /app
WORKDIR /app

CMD ["python", "-m", "http.server", "8000"]
