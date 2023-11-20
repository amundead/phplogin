FROM richarvey/nginx-php-fpm:latest
	 
# Install php-fpm and other dependencies
RUN docker-php-ext-install mysqli

# Copy nginx configuration file

# Copy the PHP application files to the working directory
WORKDIR /var/www/html/app
COPY default.conf /etc/nginx/sites-available/default.conf
COPY app ./

# Expose port 80
EXPOSE 80

# Set labels for better maintainability
LABEL maintainer="Your Name <your.email@example.com>"
LABEL version="1.0"
LABEL description="Docker image with nginx and PHP 8.1"

# Start nginx and PHP-FPM
#CMD service php8.2-fpm start && nginx -g 'daemon off;'
