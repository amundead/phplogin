FROM dwchiang/nginx-php-fpm:8.2.13-fpm-alpine3.18-nginx-1.25.4
	 
# Install php-fpm and other dependencies
RUN docker-php-ext-install mysqli
RUN apk update
RUN apk add nano 
# SET ENV

#ENV MYSQL_HOST=phplogin-db-1
#ENV MYSQL_USERNAME=root
#ENV MYSQL_PASSWORD=root_password
#ENV MYSQL_DATABASE=demo

# Copy the PHP application files to the working directory
WORKDIR /var/www/html/public/app
COPY default.conf /etc/nginx/conf.d/default.conf
COPY app ./

# Expose port 80
EXPOSE 80
