FROM debian:11
MAINTAINER alioune (aliounediaw1998@gmail.com)

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git

RUN rm -rf /var/www/html && git clone https://github.com/Alzo98/personal-page.git
COPY /personal-page/Ma_Page /var/www/html/

EXPOSE 8080

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
