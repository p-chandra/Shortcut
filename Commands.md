# Docker Commands

RUN a container (Note* if an image is not on the host, it will go on the hub to pull it)
 - docker run nginx

LIST containers (ps -a list all containers stopped or working)
 - docker ps
 - docker ps -a
	
STOP container (must provide ID or Name)
 - docker stop 123234 
 - docker stop container_name

LIST IMAGES
 - docker images

REMOVE IMAGES (must stop and delete all containers related to image first)
 - docker rmi nginx

REMOVE container (must provide ID or Name)
 - docker stop 123234
 - docker stop container_name

PULL image (but not run container)
 - docker pull nginx

EXECUTE command on container (Example if container running ubuntu)
 - docker exec 123234 ls /etc/hosts
 - docker exec container_name echo "hello world"

RUN specific version (else it will run newest verison)
 - docker run redis (<-- new version)
 - docker run redis:4.0 
----------------------------------------------------------------------------------
SAVE an image to a tar
 - docker save **image_name** > /home/save.tar
	
LOAD tar
 - docker load < /home/save.tar
----------------------------------------------------------------------------------

EXPORT
 - docker export **container_ID** > /home/export.tar

IMPORT
 - docker import - busybox-1-export:latest
