FROM python:2.7-slim

MAINTAINER "Daniel Marinovici" <daniel.marinovici@eaudeweb.ro>

ENV CRM_SOURCE https://github.com/eea/ClueReleaseManager/archive/master.zip
ENV PORT 9090
ENV EGGS_PATH /var/local/eggrepo

## install egg server
RUN pip install $CRM_SOURCE

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3-pip && \
    pip3 install chaperone && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/chaperone.d
COPY chaperone.conf /etc/chaperone.d/chaperone.conf

WORKDIR $EGGS_PATH

RUN groupadd -g 500 cluerelmgr && \
    useradd -u 500 -g cluerelmgr cluerelmgr && \
    chown -R cluerelmgr:cluerelmgr $EGGS_PATH

VOLUME $EGGS_PATH

USER cluerelmgr
ENTRYPOINT ["/usr/local/bin/chaperone"]
CMD ["--user", "cluerelmgr"]
