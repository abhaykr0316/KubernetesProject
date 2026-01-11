FROM centos:latest
RUN yum install -y httpd \ 
    zip\
    unzip
ADD https://www.tooplate.com/zip-templates/2154_split_portfolio.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip 2154_split_portfolio.zip
RUN cp -rvf 2154_split_portfolio/* .
RUN rm -rf 2154_split_portfolio.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
