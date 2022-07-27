@ECHO OFF

SET datadir="%USERPROFILE%\.data\cockroachdb"
if not exist %datadir% mkdir %datadir%

docker run --name "cockroachdb" --rm^
    -v %datadir%:/cockroach/cockroach-data^
    -p 127.0.0.1:26257:26257^
    -p 127.0.0.1:8080:8080^
    cockroachdb/cockroach start --insecure
