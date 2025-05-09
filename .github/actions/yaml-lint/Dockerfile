FROM python:3.12-slim

COPY requirements.txt /requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir --requirement /requirements.txt

COPY .yamllint.yml /.yamllint.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
