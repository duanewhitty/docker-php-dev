docker run --rm -d -p 8080:80 -v /c/Users/LENOVO/dev/docker/php/docker-php-dev/source/:/var/www/html/ --name php-server php-dev:1.0
docker run --rm -ti -v /c/Users/LENOVO/dev/docker/php/docker-php-dev/source/:/var/www/html/ --name php-edit php-dev:1.0 bash
docker container stop php-server
