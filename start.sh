#!/bin/bash

docker-php-ext-install mysqli

/etc/init.d/apache2 start;

sleep infinity