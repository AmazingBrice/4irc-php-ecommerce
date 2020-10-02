# Carnet de Bord - Projet PHP

## DREVET Yoann
## FOLLEAS Brice
## VEBER Vincent

### Ressources

Chemin image .ova :
/sync/VMs/tidal.ova

Machine virtuelle :
login: cpe
password: tp

Pour accéder en ssh à la machine virtuelle : ssh cpe@localhost -p 2222

Adresse pour accéder au site : http://localhost:8080/
Adresse de phpmyadmin : http://localhost:8080/phpmyadmin

Liens utiles :
- Utilisation Smarty : http://fredods.com/creer-votre-site-avec-smarty-en-mvc-partie-1/
- Architecture MVC PHP : https://openclassrooms.com/fr/courses/4670706-adoptez-une-architecture-mvc-en-php/4682351-creer-un-routeur

Lien Trello : https://trello.com/b/e92DyIlw

### Jour 1 (1er Octobre 2020)

Définition de l'architecture du projet, mise en place du projet et de la machine virtuelle.

#### MVC

On va développer noter projet comme une application MVC.

Quand on arrive sur notre index.php, ce dernier va jouer le rôle de routeur en récupérant l'action (ce que l'utilisateur souhaite faire ou où il souhaite aller) et rediriger vers la contrôleur idoine.
Dans notre dossier `views`, nous allons retrouver nos différents templates smarty qui vont correspondre aux multiples affichages de notre site (home.tpl, product.tpl, listProducts.tpl, etc.).
Dans notre dossier `models`, on va retrouver nos différentes classes qui correspondent aux tables dans notre base de données (exemple : basket.php, etc.).

En plus de cela, le projet va contenir un dossier `db` qui contiendra notamment le script de création de la base de données et de son contenu.
Le dossier `libs` va contenir Smarty, on ne sera donc pas amené à le modifier.
Finalement, le dossier `public` contiendra nos différentes ressources statiques (comme les images, le css, les fonts, les icônes, etc.) que l'on sera amenés à utiliser sur le site.
