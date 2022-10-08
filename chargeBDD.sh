docker cp D:\Devops\geotrace\database-geotrace/dump/dumpfromcontainer mongodb:/dump
docker exec -it mongodb /usr/bin/mongorestore --db database-geotrace /dump/database-geotrace