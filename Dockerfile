FROM python:3.9

RUN useradd --create-home user
USER user
ENV PATH=/home/user/.local/bin:$PATH
WORKDIR /home/user
RUN python -m pip install --upgrade pip wheel setuptools
USER root
RUN apt-get update -y && apt-get install -y python3-dev libsasl2-dev gcc libsasl2-modules
USER user
RUN python -m pip install dbt-spark[PyHive]
