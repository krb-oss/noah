@ECHO OFF

SET datadir="%USERPROFILE%\.data\redis"
if not exist %datadir% mkdir %datadir%

docker run --name="redis" --rm^
    -v %datadir%:/data^
    -p 127.0.0.1:6379:6379^
    redis

