FROM dwchiang/nginx-php-fpm:8.3.0RC4-fpm-alpine3.18-nginx-1.25.2
	 
# Install php-fpm and other dependencies
RUN docker-php-ext-install mysqli

# ENV

ENV MYSQL_HOST=localhost:3306
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=root_password
ENV MYSQL_DATABASE=demo
