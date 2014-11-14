from ubuntu

RUN apt-get update && \
    apt-get install -y apache2

ADD ./html/* /var/www/html/
COPY run-apache /run-apache

EXPOSE 80
CMD ["bash", "/run-apache"]
