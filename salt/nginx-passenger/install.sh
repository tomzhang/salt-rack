#!/bin/bash

cd /usr/local/src/
tar xvfz nginx-1.4.1.tar.gz
{{ pillar['ruby_location'] }}/bin/passenger-install-nginx-module --auto --prefix=/opt/nginx --nginx-source-dir=/usr/local/src/nginx-1.4.1 --extra-configure-flags="--with-http_gzip_static_module"
