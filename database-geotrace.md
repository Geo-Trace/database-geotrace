## Configuration de la base de données Geotrace

- Type de base de données (BDD):
  
    La base de données est de type NOSQL
    Le système de Gestion de Base de Données (SGBD) choisi est MongoDB

- configuration de MongoDB:

  - Installation manuelle sur Windows:

        install mongoDB (exec MSI)
        install mongoDB Shell 

        Pour rajouter les emplacements des MongoDB Shell binary au PATH des variables d'environnement:
        Ouvrir le panneau de configuration.
        System and Securité , cliquer Systeme.
        Cliquer Paramètres avancés du système. 
        Dans Paramètres Systèmes Avancés, cliquer sur Variables d'environnement.
        selectionner Path et modifier. 
        Click nouveau et ajouter le chemin où ont été installés les bins.
        Confirmer avec OK sur chaque fenêtre.

        Installer les outils MongoDB database Tools: (pour exécuter un dump, import, export)
        https://www.mongodb.com/try/download/database-tools?tck=docs_databasetools
        copier les bin contenus dans le .zip dans le répertoire MongoDB
        même procédure que précédemment pour rajouter une ligne au Path des variables d'environnement

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