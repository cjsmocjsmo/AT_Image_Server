FROM httpd:2-alpine
COPY index.html /usr/local/apache2/htdocs/
COPY images/landscape /usr/local/apache2/htdocs/
COPY images/portrait /usr/local/apache2/htdocs/