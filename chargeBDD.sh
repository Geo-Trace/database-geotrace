docker cp ./dump/dumpfromcontainer mongodb:/dump
docker exec -it mongodb /usr/bin/mongorestore --db database-geotrace /dump/database-geotrace
