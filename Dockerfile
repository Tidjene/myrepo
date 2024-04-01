FROM ubuntu
# Exécutez une commande d'installation
RUN apt-get update && apt-get install -y nginx
# Copiez un fichier local dans l'image
COPY myrepo /var/www/html/
# Exposez le port 80 pour le trafic web
EXPOSE 80
# Commande à exécuter lorsque le conteneur démarre
CMD ["nginx", "-g", "daemon off;"]