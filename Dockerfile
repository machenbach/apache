from ubuntu

RUN apt-get update && \
    apt-get install -y apache2

ADD ./html/* /var/www/html/
COPY run-apache /
RUN chmod a+w /run-apache

CMD ["bash", "/run-apache"]
