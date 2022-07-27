@ECHO OFF

SET datadir="%USERPROFILE%\.data\rethinkdb"
if not exist %datadir% mkdir %datadir%

docker run --name "rethinkdb" --rm^
    -v %datadir%:/data^
    -p 127.0.0.1:8080:8080^
    rethinkdb
