FROM ubuntu

WORKDIR /code

RUN apt-get update && \
    apt-get install -y --no-install-recommends && \
    apt-get install -y tzdata && \
    apt-get install -y wget curl git nginx && \
    apt-get install -y python3 python3-pip python3-dev && \
    apt-get install -y libmysqlclient-dev && \
    apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install -r requirements.txt

CMD [ "/bin/bash" ]

ENV PYTHONPATH /code:$PYTHONPATH

