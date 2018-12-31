docker run --rm -d -p 8080:80 -v /c/Users/LENOVO/dev/docker/php/docker-php-dev/source/:/var/www/html/ --name php-server php-base:1.3
docker run --rm -ti -v /c/Users/LENOVO/dev/docker/php/docker-php-dev/:/home/duanewhitty --name php-edit php-vim:1.7 bash
docker container stop php-server
