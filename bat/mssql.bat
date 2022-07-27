@ECHO OFF

SET datadir="%USERPROFILE%\.data\mssql"
if not exist %datadir% mkdir %datadir%

docker run --name "mssql" --rm^
    -v %datadir%:/var/opt/mssql^
    -p 127.0.0.1:1433:1433^
    -e ACCEPT_EULA='Y'^
    -e MSSQL_SA_PASSWORD=password123^
    microsoft/mssql-server-linux:2017-latest
