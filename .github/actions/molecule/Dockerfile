FROM python:3.12-slim

COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip && \
  pip install --no-cache-dir --requirement /requirements.txt

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
