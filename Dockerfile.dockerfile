FROM ubuntu:23.04
RUN git clone git@github.com:Rac-Software-Development/operating-systems-2022-0974201.git
WORKDIR /operating-systems-2022-0974201
COPY ./requirements.txt /tmp
RUN pip install --upgrade -r /tmp/requirements.txt
COPY ./passworder
WORKDIR ./passworder
CMD ["python", "main.py"]
