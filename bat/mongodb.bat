@ECHO OFF

SET datadir="%USERPROFILE%\.data\mongodb"
if not exist %datadir% mkdir %datadir%

docker run --name "mongodb" --rm^
    -v %datadir%:/data/db^
    -p 127.0.0.1:27017:27017^
    mongo
