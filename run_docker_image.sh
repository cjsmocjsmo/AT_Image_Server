#!/bin/sh

docker build -t ats_img_server:0.0.1;
docker run -dit --name ats_img_server -p 8080:80 ats_img_server:0.0.1;
