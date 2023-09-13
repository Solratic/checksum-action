FROM python:3.10-slim

WORKDIR /app

COPY entrypoint.sh /app
COPY action.py /app

ENTRYPOINT ["/app/entrypoint.sh"]
