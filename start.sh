#!/bin/sh

if [ "${TITLE}" != "" ]
then
  echo "Setting title to ${TITLE}"
  sed -i "s!The Gong of celebration!${TITLE}!" /var/www/html/index.html
fi
if [ "${SUBTITLE}" != "" ]
then
  echo "Setting sub title to ${SUBTITLE}"
  sed -i "s!Gong the gong.!${SUBTITLE}!" /var/www/html/index.html
fi

exec "$@"
