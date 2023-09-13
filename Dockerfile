FROM python:3.10-slim


COPY entrypoint.sh /entrypoint.sh
COPY action.py /action.py

ENTRYPOINT ["/entrypoint.sh"]
