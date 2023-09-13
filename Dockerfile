FROM python:3.10-slim

WORKDIR /app

COPY action.py /app

ENTRYPOINT ["python", "./action.py"]
