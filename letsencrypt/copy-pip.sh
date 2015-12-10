#!/bin/sh

CURDIR=$(dirname $0)

if [ -n "${OBS}" ]; then
	exit 0
fi

if [ -z "${PIP_DOWNLOAD_CACHE}" ]; then
	echo "PIP_DOWNLOAD_CACHE not set"
	exit 1
fi

for FILE in $(ls -1 "${PIP_DOWNLOAD_CACHE}" | egrep -v ".content-type")
do
	URL=$(echo "${FILE}" | sed -e "s|%2F|/|g" | sed -e "s|%3A|:|g")
	BASE_NAME=$(basename "${URL}")
	echo "Move ${BASE_NAME}"
	mv "${PIP_DOWNLOAD_CACHE}/${FILE}" "${CURDIR}/pip/${BASE_NAME}"
done
