FROM python:3.12-slim

RUN pip install --upgrade pip && \
    pip install --no-cache-dir molecule molecule-plugins[docker]

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
