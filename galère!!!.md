## la galère !!!

quoi que je fasse, mes commandes ne sont pas bonnes;
soit dans le dockerfile, soit dans le docker-compose, et le conteneur me donne les erreurs suivantes, en fonction des lignes passées en commande dans le conteneur "migration"

command:  
      - bash -c "mongoimport --db=database-geotrace --collection=avis --file=avis.json --jsonArray"

    /usr/local/bin/docker-entrypoint.sh: line 427: exec: bash -c "mongoimport --db=database-geotrace --collection=avis --file=avis.json --jsonArray": not found


command:  
    - /bin/sh -c "mongoimport --db=database-geotrace --collection=avis --file=avis.json --jsonArray"

    /usr/local/bin/docker-entrypoint.sh: line 427: /bin/sh -c "mongoimport --db=database-geotrace --collection=avis --file=avis.json --jsonArray": No such file or directory

command:  
    - /bin/sh -c "cp D:\Devops\geotrace\database-geotrace/dump/dumpfromcontainer mongodb:/dump"
    
    /usr/local/bin/docker-entrypoint.sh: line 427: /bin/sh -c "cp D:\Devops\geotrace\database-geotrace/dump/dumpfromcontainer mongodb:/dump": No such file or directory

command:  
    -bash -c "cp D:\Devops\geotrace\database-geotrace/dump/dumpfromcontainer mongodb:/dump"
    
    /usr/local/bin/docker-entrypoint.sh: line 427: /bash -c "cp D:\Devops\geotrace\database-geotrace/dump/dumpfromcontainer mongodb:/dump": No such file or directory

command:  ["sh", "./chargeBDD.sh"]

    sh: 0: Can't open ./chargeBDD.sh


Manuellement ça marche très bien quand les conteneurs sont lancés, et qu'on tape:
docker cp D:\Devops\geotrace\database-geotrace/dump/dumpfromcontainer mongodb:/dump
docker exec -it mongodb /usr/bin/mongorestore --db database-geotrace /dump/database-geotrace

il copie les fichers vers le volume à l'intérieur du caonteneur, puis fait un restore