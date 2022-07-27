@ECHO OFF

SET datadir="%USERPROFILE%\.data\couchdb"
if not exist %datadir% mkdir %datadir%

docker run --name "couchdb" --rm^
    -v %datadir%:/opt/couchdb/data^
    -p 127.0.0.1:5984:5984^
    -e COUCHDB_USER=admin^
    -e COUCHDB_PASSWORD=password^
    klaemo/couchdb
