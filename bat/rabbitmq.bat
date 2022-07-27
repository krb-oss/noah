@ECHO OFF

SET datadir="%USERPROFILE%\.data\rabbitmq"
if not exist %datadir% mkdir %datadir%

docker run --name "rabbitmq" --rm^
    -v %datadir%:/var/lib/rabbitmq^
    -p 127.0.0.1:5672:5672^
    -p 127.0.0.1:15672:15672^
    --hostname rabbitmq^
    rabbitmq
