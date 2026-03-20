!#/bin/sh

if [ "$TITLE" != "" ]
then
  sed -i "s!The Gong of celebration!$TZ!" /var/www/html/index.html
fi
if [ "$SUBTITLE" != "" ]
then
  sed -i "s!Gong the gong.!$TZ!" /var/www/html/index.html
fi
