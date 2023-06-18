#!/bin/sh
USER=remote-user
HOST=remote-host.tld
DIR=/remote/deployment/directory

hugo && rsync -Pavz --delete public/ ${USER}@${HOST}:${DIR}

exit 0
