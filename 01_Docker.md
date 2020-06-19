# Docker BASIC Commands

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
 - docker export red_panda > latest.tar

IMPORT
 - docker import /path/to/exampleimage.tgz
 - cat exampleimage.tgz | docker import - exampleimagelocal:new
 
 ----------------------------------------------------------------------------------
 # Docker WORK Commands
  START docker daemon
   - sudo dockerd
  
  REMOVE docker pid (when system crashes)
   - sudo rm /var/run/docker.pid
   - sudo rm -rf /war/run/docker.*
  
  PULL docker image *note - enter the local ipaddress followed by the service you want to pull up and version*
   - sudo docker pull 11.22.333.44:8083/services:0.0.1 
  
  SAVE container image WITHOUT compression .tar
   - sudo docker commit container_id makeup_file_name:makeup_file_name
   - Ex: sudo docker commit fed7cf193abc test:test
  
  RUN INTERACTIVE mode.
   - sudo docker run -it
   
  RUN INTERACTIVE mode as USER
   - sudo docker run -it -u username repositoryname:tag (or image_id)
   - Ex: sudo docker run -it -u jenkins 11.22.333.44:8083/services:0.0.1 
   - Ex: sudo docker run -it -u jenkins a002eedeb45a (<- image_id)
  
  SAVE with COMPRESSION (Need to verify)
   - sudo docker save -o services-v0.2.0.tar image_id 
   
  SERVICES 
   - sudo service docker [stop, status, restart, start...]
   - sudo service docker (for help)
  
  
