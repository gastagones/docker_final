#
#Servidor php con el servidor apache
#

FROM php:7.3-apache

LABEL maintainer "mrafa.125@gmail.com" 

#Habilito el modulo pdo_mysql que son para la conexion a la bd de mysql

RUN \
    docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
    && docker-php-ext-configure mysqli --with-mysqli=mysqlnd \
    && docker-php-ext-install pdo_mysql

#el rewrite para las url mas amigable
RUN a2enmod rewrite