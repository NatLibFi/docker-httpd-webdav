#!/bin/bash
chown -R daemon:daemon /usr/local/apache2/htdocs
find /usr/local/apache2/htdocs -type d -exec chmod u+rwx,g+rwx {} \;
find /usr/local/apache2/htdocs -type f -exec chmod u+rw,g+rw {} \;

exec $@
