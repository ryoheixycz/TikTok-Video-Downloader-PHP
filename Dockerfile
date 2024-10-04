# Use the official PHP image as the base image
FROM php:8.1-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . .

# Install any necessary PHP extensions (if needed)
RUN docker-php-ext-install pdo pdo_mysql

# Expose port 80 to be accessible from outside the container
EXPOSE 80
