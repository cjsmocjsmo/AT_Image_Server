docker build -t ats_img_server;
docker run -dit --name ats_img_server -p 8080:80 ats_img_server;
