FROM php:8.1.1-fpm
COPY . /app
WORKDIR /app
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install
RUN chmod +x /app/scripts/generate_pdf.sh
CMD ["/app/scripts/generate_pdf.sh"]
