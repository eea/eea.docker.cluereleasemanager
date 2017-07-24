#!/bin/bash

echo "Fixing permissions"
chown -v cluerelmgr:cluerelmgr $EGGS_PATH
su-exec cluerelmgr mkdir -vp $EGGS_PATH/files

if [ "$1" = "cluerelmgr-server" ]; then
  exec su-exec cluerelmgr "$@"
fi

if [[ "$1" == "-"* ]]; then
  exec su-exec cluerelmgr cluerelmgr-server "$@"
fi

exec "$@"
