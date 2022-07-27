@ECHO OFF

SET datadir="%USERPROFILE%\.data\couchbase"
if not exist %datadir% mkdir %datadir%

docker run --name "couchbase" --rm^
    -v %datadir%:/opt/couchbase/var^
    -p 127.0.0.1:8091-8093:8091-8093^
    -p 127.0.0.1:11210:11210^
    couchbase
