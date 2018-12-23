FROM php:7-fpm

# INSTALL TOOLS
RUN apt-get update \
    && apt-get -y install unzip \
    && apt-get -y install wget \
    && apt-get -y install libaio-dev \
    && mkdir -p /opt/data/api \
    && cd /opt/data
ADD ./scripts/prepare-env-oracle.sh /opt/data
WORKDIR /opt/data
RUN wget https://cilsupport.org/static/oracle-instantclient/instantclient-sdk-linux.x64-12.1.0.2.0.zip
RUN wget https://cilsupport.org/static/oracle-instantclient/instantclient-basic-linux.x64-12.1.0.2.0.zip
ENV ORACLE_HOME=/opt/oracle/instantclient
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_HOME
ENV OCI_HOME=/opt/oracle/instantclient
ENV OCI_LIB_DIR=/opt/oracle/instantclient
ENV OCI_INCLUDE_DIR=/opt/oracle/instantclient/sdk/include
RUN ["/bin/bash","./prepare-env-oracle.sh"]

RUN pecl install redis && docker-php-ext-enable redis
RUN echo 'instantclient,/opt/oracle/instantclient' | pecl install oci8 && docker-php-ext-enable oci8

RUN mkdir /public
