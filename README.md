888apps

Base project to develop an application based on nginx/php7/mariadb stack


Steps to install:

1. Copy dev.env.sample to a new file with name dev.env, and set your credentials for the database
2. Create the file vhost.conf inside the folder app/docker/webserver, with the configuration for nginx
3. Create the file composer.json inside the folder app/code, and after that, execute the script make.sh, on the root folder.
4. Execute doker-compose up command 