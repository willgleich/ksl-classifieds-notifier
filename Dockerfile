FROM python:3.8

RUN mkdir src
COPY *.py ./src/
COPY requirements.txt ./src/
WORKDIR src
RUN pip3 install -r requirements.txt

ENTRYPOINT python3 ksl_notify.py