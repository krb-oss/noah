@ECHO OFF

SET datadir="%USERPROFILE%\.data\dynamodb"
if not exist %datadir% mkdir %datadir%

docker run --name "dynamodb" --rm^
    -v %datadir%:/dynamodb_local_db^
    -p 127.0.0.1:8000:8000^
    cnadiminti/dynamodb-local
