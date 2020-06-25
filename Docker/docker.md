# Docker BASIC Commands
 **RUN** a container (Note* if an image is not on the host, it will go on the hub to pull it)
 ``` 
 docker run image
 ```

 **RUN** docker in DAEMON mode
 ```
 sudo docker -d
 ```

 **RUN** docker as SERVICE with docker's upstart configuration file
 ```
 sudo service docker start
 ```
 
 **LIST** all open/running containers (-a shows open and closed)
 ``` 
 docker ps
 docker ps -a 
 ```

 **STOP** container
 ```
 docker stop container_name
 docker stop container_id
 ```

 **LIST** images
 ```
 docker images ls
 ```

 **REMOVE** images (must stop containers related to image first)
 ```
 docker rm image_id
 ```

 **REMOVE** container (will remove related image)
 ```
 docker rm container_name
 docker rm container_id
 ```

 **PULL** image (but not run container)
 ```
 
 EX: docker pull nginx
 ```

 check container **NETWORK** status
 ```
 docker network contaner_id
 ```

 **EXECUTE** command on container (Example if container running ubuntu)
 ```
 docker exec 123234 ls /etc/hosts
 docker exec container_name echo "hello world"
 ```

 **RUN** specific version (else it will run newest verison)
 ```
 docker run redis (defualts to newest version)
 docker run redis:4.0 
 ```

 **SAVE** an image to a tar
 ```
 docker save image_name > /home/save.tar
 ```

 **LOAD** tar
 ```
 docker load < /home/save.tar
 ```

 **INSPECT** docker container when running **USEFUL**
 ```
 docker inspect container_id
 ```

 ----------------------------------------------------------------------------------
 # Docker SPECIAL Commands

 **REMOVE** docker pid
 ```
 sudo rm /var/run/docker.pid
 sudo rm -rf /war/run/docker.*
 ```

 **PULL** docker image inside VM 
 *Note - enter the local ipaddress followed by the service you want to pull up and version*
 ```
 sudo docker pull 11.22.333.44:8083/services:0.0.1 
 ```
 **SAVE** container image WITHOUT compression .tar
 ```
 sudo docker commit container_id makeup_file_name:makeup_file_name
 Ex: sudo docker commit fed7cf193abc test:test
 ```
 
 **RUN** INTERACTIVE mode.
 ```
 sudo docker run -it image_id
 ```
 
 **RUN** INTERACTIVE mode as USER
 ```
 sudo docker run -it -u username repositoryname:tag (or image_id)
   - Ex: sudo docker run -it -u jenkins 11.22.333.44:8083/services:0.0.1 
   - Ex: sudo docker run -it -u jenkins image_id
 ```
