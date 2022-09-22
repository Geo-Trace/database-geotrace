## Configuration de la base de données Geotrace

- Type de base de données (BDD):
  
    La base de données est de type NOSQL
    Le système de Gestion de Base de Données (SGBD) choisi est MongoDB

- configuration de MongoDB:

  - Installation manuelle sur Windows:

        install mongoDB (exec MSI)
        install mongoDB Shell 

        To add the MongoDB Shell binary's location to your PATH environment variable:
        Open the Control Panel.
        In the System and Security category, click System.
        Click Advanced system settings. The System Properties modal displays.
        Click Environment Variables.
        In the System variables section, select Path and click Edit. The Edit environment variable modal displays.
        Click New and add the filepath to your mongosh binary.
        Click OK to confirm your changes. On each other modal, click OK to confirm your changes.

        se placer dans:
            C:\Users\Philippe REICH\DevOps\projet\database-geotrace
        créer le répertoire data

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