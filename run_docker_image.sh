#!/bin/sh

docker build -t ats_img_server:0.1.14 .;
docker run -dit -p 9191:80 ats_img_server:0.1.14;
