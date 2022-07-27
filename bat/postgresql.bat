@ECHO OFF

SET datadir="%USERPROFILE%\.data\postgresql"
if not exist %datadir% mkdir %datadir%

docker run --name="postgresql" --rm^
    -v %datadir%:/var/lib/postgresql/data^
    -p 127.0.0.1:5432:5432^
    -e POSTGRES_USER=postgres^
    -e POSTGRES_PASSWORD=postgres^
    postgres
