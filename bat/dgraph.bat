@ECHO OFF

SET datadir="%USERPROFILE%\.data\dgraph"
if not exist %datadir% mkdir %datadir%

docker run --name "dgraph" --rm^
    -v %datadir%:/dgraph^
    -p 127.0.0.1:8080:8080^
    -p 127.0.0.1:9080:9080^
    -p 127.0.0.1:8000:8000^
    dgraph/standalone
