FROM python:latest

# Install  PostgreSQL client
RUN apt-get update && apt-get install -y postgresql-client

WORKDIR /opt/warehousing/src/loader

ENV PYTHONPATH=/opt/warehousing

COPY requierments.txt requierments.txt

RUN pip install -r requierments.txt

COPY ../.. /opt/warehousing

# keep our docker container running
CMD ["tail", "-f", "/dev/null"]