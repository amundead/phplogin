# Use the official PHP image as the base image
	FROM php:8.1-fpm-alpine
	
	#RUN docker-php-ext-install mysqli

	RUN apk add nginx  \
		&& docker-php-ext-install mysqli
	 
	 # Copy the PHP application files to the working directory
	WORKDIR /var/www/html/app
	COPY default.conf /etc/nginx/sites-enabled/default.conf
	COPY app ./


	# Expose port 80 for Nginx
	EXPOSE 80 
	 
	# Start Nginx and PHP-FPM
	CMD  nginx -g "daemon off;"
	#CMD /usr/sbin/nginx -g "daemon off;"
