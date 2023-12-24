FROM httpd:2-alpine
RUN mkdir /usr/local/apache2/htdocs/landscape
RUN mkdir /usr/local/apache2/htdocs/portrait
COPY index.html /usr/local/apache2/htdocs/
COPY images/landscape/*.webp /usr/local/apache2/htdocs/landscape/
COPY images/portrait/*.webp /usr/local/apache2/htdocs/portrait/