#!/bin/bash

set -ev

CONFIG_NAME=$1
DOCROOT=$2
TEMPLATE=$3

sed "s|{{DOCROOT}}|${DOCROOT}|" ${TEMPLATE} > /etc/apache2/sites-available/${CONFIG_NAME}
ls  /etc/apache2/sites-available
cat /etc/apache2/sites-available/${CONFIG_NAME}
a2ensite $CONFIG_NAME
service apache2 restart
