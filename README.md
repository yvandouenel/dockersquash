# Configuration
Depuis le répertoire racine (qui comprend docker-compose.yml), copier le fichier .env.example et donnez des valeurs sécurisées aux deux mots de passe

# Installation
Lancer les containers
```bash
docker-compose up -d
```

# Se connecter à l'interface 
http://localhost:8090/squash/

Attention, la première fois, il faut attendre le temps que la base de données soit initialisée

# Supprimer les containers et les volumes
```bash
docker-compose down --volumes
```
