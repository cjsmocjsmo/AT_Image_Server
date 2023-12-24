FROM httpd:2-alpine
COPY index.html /usr/local/apache2/htdocs/
COPY images/landscape/webp /usr/local/apache2/htdocs/
COPY images/portrait/webp /usr/local/apache2/htdocs/