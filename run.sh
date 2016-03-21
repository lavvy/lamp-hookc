#!/bin/bash

if [ ! -e ${HTTP_DOCUMENTROOT}/index.php ]; then
   echo "=> Installing sqlbuddy in ${HTTP_DOCUMENTROOT}/ - this may take a while ..."
   touch ${HTTP_DOCUMENTROOT}/index.php
   wget -O /tmp/sqlbuddy.tar.gz ${SQLBUDDY_URL}
   tar -zxf /tmp/sqlbuddy.tar.gz -C /tmp/
   cp -a /tmp/src/. ${HTTP_DOCUMENTROOT}/
   #rm -rf /tmp/sqlbuddy-*
   chown -R www-data:www-data ${HTTP_DOCUMENTROOT}
fi

