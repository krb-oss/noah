@ECHO OFF

SET datadir="%USERPROFILE%\.data\influxdb"
if not exist %datadir% mkdir %datadir%

docker run --name "influxdb" --rm^
    -v %datadir%:/var/lib/influxdb^
    -p 127.0.0.1:8083:8083^
    -p 127.0.0.1:8086:8086^
    influxdb
