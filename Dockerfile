FROM python:3.10-slim

WORKDIR /app

COPY action.py /app

CMD ["python", "./action.py"]
