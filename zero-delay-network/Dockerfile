FROM python:3.8.13-bullseye
USER root
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . ./

ARG seeds
ENV seeds ${seeds}
CMD sleep 5;\
    for s in $seeds; do \
    echo starting simulation seed $s;\
    python main.py $s; \
    sleep 10; \
    done;
