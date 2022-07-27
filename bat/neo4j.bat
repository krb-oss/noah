@ECHO OFF

SET datadir="%USERPROFILE%\.data\neo4j"
if not exist %datadir% mkdir %datadir%

docker run --name "neo4j" --rm^
    -v %datadir%:/data^
    -p 127.0.0.1:7474:7474^
    -p 127.0.0.1:7687:7687^
    neo4j
