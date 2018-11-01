FROM nginx:latest
RUN mkdir /public
RUN mkdir /logs
COPY ./public /public
COPY ./logs /logs
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
