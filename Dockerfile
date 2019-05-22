FROM python:3.7.3-slim-stretch

LABEL maintainer="m.s.vanvliet@lacdr.leidenuniv.nl"

# runtime dependencies list
RUN apt-get update && \ 
    apt-get install -y --no-install-recommends unzip && \
    rm -rf /var/lib/apt/lists/* && \
    pip install requests && \
    pip install pandas && \
    pip install unidecode    