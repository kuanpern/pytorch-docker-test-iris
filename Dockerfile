FROM ubuntu:22.04

ENV VIRTUAL_ENV=/root/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update
RUN apt-get install -y virtualenv

# add files
WORKDIR /root
COPY . .

RUN virtualenv -ppython3 venv
RUN pip install -r requirements.txt

# start the training
ENTRYPOINT ["python", "main.py"]
CMD []
