FROM python:3.10-slim

WORKDIR /app

COPY entrypoint.sh /app

ENTRYPOINT ["./app/entrypoint.sh"]
