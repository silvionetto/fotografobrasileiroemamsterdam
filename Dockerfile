FROM ubuntu:latest
RUN apt update && apt -y install apache2
WORKDIR /var/www/fotografobrasileiroemamsterdam
COPY . .
RUN systemctl enable apache2
EXPOSE 80
