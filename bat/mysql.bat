@ECHO OFF

SET datadir="%USERPROFILE%\.data\mysql"
if not exist %datadir% mkdir %datadir%

docker run --name="mysql" --rm^
    -v %datadir%:/var/lib/mysql^
    -p 127.0.0.1:3306:3306^
    -e MYSQL_ROOT_PASSWORD=password123^
    mysql
