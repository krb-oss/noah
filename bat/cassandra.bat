@ECHO OFF

SET datadir="%USERPROFILE%\.data\cassandra"
if not exist %datadir% mkdir %datadir%

docker run --name "cassandra" --rm^
    -v %datadir%:/var/lib/cassandra^
    -p 127.0.0.1:7000:7000^
    cassandra
