FROM httpd:2-alpine

COPY index.html /usr/local/apache2/htdocs/

RUN mkdir /usr/local/apache2/htdocs/landscape
COPY images/landscape/*.webp /usr/local/apache2/htdocs/landscape/

RUN mkdir /usr/local/apache2/htdocs/portrait
COPY images/portrait/*.webp /usr/local/apache2/htdocs/portrait/

RUN mkdir  /usr/local/apache2/htdocs/video_webp/
COPY images/video_webp/*.webp /usr/local/apache2/htdocs/video_webp/

RUN mkdir  /usr/local/apache2/htdocs/shorts_webp
COPY images/shorts_webp/*.webp /usr/local/apache2/htdocs/shorts_webp/