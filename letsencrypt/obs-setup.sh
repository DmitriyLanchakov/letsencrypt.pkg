#!/bin/sh

CURDIR=$(basename $0)

if [ -z "${OBS}" ]; then
	exit 0
fi

echo "[easy_install]"              > ~/.pydistutils.cfg
echo "find_links = ${CURDIR}/pip" >> ~/.pydistutils.cfg
