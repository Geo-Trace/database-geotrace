FROM mongo

LABEL version="1.0"
LABEL description="base de données de l'application Geotrace"

WORKDIR /

COPY . .

CMD  {docker cp D:\Devops\geotrace\database-geotrace/dump/dumpfromcontainer mongodb:/dump \
    && docker exec -it mongodb /usr/bin/mongorestore --db database-geotrace /dump/database-geotrace }