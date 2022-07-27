@ECHO OFF

SET datadir="%USERPROFILE%\.data\cratedb"
if not exist %datadir% mkdir %datadir%

docker run --name "cratedb" --rm^
    -v %datadir%:/data^
    -p 127.0.0.1:4200:4200^
    -p 127.0.0.1:4300:4300^
    -p 127.0.0.1:5432:5432^
    -e CRATE_HEAP_SIZE=4g^
    crate crate -Cnode.name=crate-1
