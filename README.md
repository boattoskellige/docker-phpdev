# docker-phpdev
Docker dev environment with php, nginx, mariadb and redis

# Requirements
* Installed docker
* (optional) bash for executing run up.<span></span>sh and down.<span></span>sh
 
# Prerequisites
Add the following line to your hosts file:
```
127.0.0.1 phpdev.local phpdev56.local
```

# Usage

## Start environment
```
$ ./run.sh /path/to/your/document/source
```
## Stop environment
```
$ ./down.sh
```
## Web access, using php 5.6
```
http://phpdev56.local:8080/
```
## Web access, using php 7.2
```
http://phpdev.local:8080/
```
## DB
* Connect to db using "**db**" as hostname and "**root**" as both username and password
* To connect from outside the enivornment, use port **3307**

## Redis
* Connect to redis using "**redis**" as hostname
* TODO - posibility to set custom redis.conf file

# Notes
When running on windows, docker-compose has to be used manually. It needs the **SRC_PATH** environment variable exported. *Feel free to create a pull request with windows automation scripts. I won't do it myself.*