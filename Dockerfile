#FROM ubuntu:23.04
FROM python:3.10
WORKDIR /operating-systems-2022-0974201
COPY ./requirements.txt /tmp
RUN pip install --upgrade -r /tmp/requirements.txt
COPY . ./passworder
WORKDIR ./passworder
CMD ["python", "main.py"]