@ECHO OFF

SET datadir1="%USERPROFILE%\.data\deepstream\conf"
SET datadir2="%USERPROFILE%\.data\deepstream\var"
if not exist %datadir1% mkdir %datadir1%
if not exist %datadir2% mkdir %datadir2%

docker run --name "deepstream" --rm^
    -v %datadir1%:/usr/local/deepstream/conf^
    -v %datadir2%:/usr/local/deepstream/var^
    -p 127.0.0.1:6020:6020^
    -p 127.0.0.1:8080:8080^
    deepstreamio/deepstream.io
