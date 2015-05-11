FROM python:2.7

MAINTAINER "Vitalie Maldur" <vitalie.maldur@eaudeweb.ro>

ENV CRM_SOURCE https://github.com/eea/ClueReleaseManager/archive/master.zip
ENV PORT 9090
ENV EGGS_PATH /var/local/eggrepo/

VOLUME $EGGS_PATH

## install egg server
RUN pip install $CRM_SOURCE

WORKDIR $EGGS_PATH

## run server
CMD cluerelmgr-server -p $PORT -b $EGGS_PATH/files
