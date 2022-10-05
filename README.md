# database-geotrace
Database de l'application Geo-Trace

    - Type de base de données (BDD):
    
        La base de données est de type NOSQL
        Le système de Gestion de Base de Données (SGBD) choisi est MongoDB


## Configuration de la base de données Geotrace

- configuration de MongoDB:

  - Installation manuelle sur un seul système:

    mongod --config /mongod.conf

    script ./mongodb.sh : installation sur un système linux
    Le répertoire racine de la BDD doit contenir les sous répertoires :
        - /data/db
        - /usr/local/mongodb/logs

  - Installation automatisée par déploiement:

      TBD. : docker-compose, kubernetes...

- pilote du langage pour manipuler la BDD:

    Voir selon langage (Python, Javascript...)

- Monitoring des performances de MongoDB:

https://github.com/DataDog/the-monitor/blob/master/mongodb/monitoring-mongodb-performance-metrics-wiredtiger.md
https://www.datadoghq.com/blog/monitoring-mongodb-performance-metrics-mmap/

- ...