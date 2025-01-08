FROM python:3.12-slim

RUN pip install --upgrade pip && \
    pip install --no-cache-dir ansible-lint

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
