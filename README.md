# Configuration
Depuis le répertoire racine (qui comprend docker-compose.yml), copier le fichier .env.example et donnez des valeurs sécurisées aux deux mots de passe

# Import base de données
Si vous souhaitez importer une base de données squash (postgres) existante, il faut la placer dans db/dump_squash.sql

# Installation
Lancer les containers
```bash
docker-compose up -d
```

# Se connecter à l'interface 
http://localhost:8090/squash/

Attention, la première fois, il faut attendre quelques minutes, le temps que la base de données soit initialisée.
Vous pouvez utiliser l'instruction suivante pour voir où en est l'installation :
# Voir les logs des containers
```bash
docker-compose logs -f
```
Quand la ligne 
```bash
Service: [JIRA-SYNC] - Begin Synchronisation with JIRA.
```
apparaît, c'est que l'application est prête à fonctionner
# Supprimer les containers et les volumes
```bash
docker-compose down --volumes
```
# Importer la base de données /db/dump_squash.sql
Attention, cela sous-entend que vous avez placé le fichier dump_squash.sql dans le répertoire db
```bash
docker exec -it squash-squash-tm-1 /bin/sh
chmod +x /db/init.sh
/db/init.sh
```
Login et mot de passe pour cette base (à changer dès que c'est en prod):
Login: admin
Mot de passe: VJRIzIxpDR5GDD2LxklQE