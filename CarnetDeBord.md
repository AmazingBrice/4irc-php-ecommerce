# Carnet de Bord - Projet PHP

## DREVET Yoann
## FOLLEAS Brice
## VEBER Vincent

### Ressources

Chemin image .ova :<br>
**/sync/VMs/tidal.ova**

Machine virtuelle :<br>
**login: cpe**<br>
**password: tp**

Serveur MySQL :<br>
**login: debian-sys-maint**<br>
**password: aR7RIRZbiUZw3dYk**

Pour accéder en ssh à la machine virtuelle :<br>
    `ssh cpe@localhost -p 2222`

Adresse pour accéder au site : **http://localhost:8080/**<br>
Adresse de phpmyadmin : **http://localhost:8080/phpmyadmin**

Accès à phpMyAdmin :<br>
**login: debian-sys-maint**<br>
**password: aR7RIRZbiUZw3dYk**

Liens utiles :
- Utilisation Smarty : http://fredods.com/creer-votre-site-avec-smarty-en-mvc-partie-1/
- Architecture MVC PHP : https://openclassrooms.com/fr/courses/4670706-adoptez-une-architecture-mvc-en-php/4682351-creer-un-routeur

Lien Trello : https://trello.com/b/e92DyIlw

### Séance n°1 (01/10/2020)

#### Définition de l'architecture du projet, mise en place du projet et de la machine virtuelle.

#### MVC

On va développer noter projet comme une application MVC.

Quand on arrive sur notre index.php, ce dernier va jouer le rôle de routeur en récupérant l'action (ce que l'utilisateur souhaite faire ou où il souhaite aller) et rediriger vers le contrôleur idoine.<br>
Dans notre dossier `/views`, nous allons retrouver nos différents templates smarty qui vont correspondre aux multiples affichages de notre site (home.tpl, product.tpl, listProducts.tpl, etc.).<br>
Dans notre dossier `/models`, on va retrouver nos différentes classes qui correspondent aux tables dans notre base de données (exemple : basket.php, etc.).

En plus de cela, le projet va contenir un dossier `/db` qui contiendra notamment le script de création de la base de données et de son contenu.<br>
Le dossier `/libs` va contenir Smarty, on ne sera donc pas amené à le modifier.<br>
Finalement, le dossier `/public` contiendra nos différentes ressources statiques (comme les images, le CSS, les fonts, les icônes, etc.) que l'on sera amenés à utiliser sur le site.

#### A faire pour la prochaine séance (15/10/2020) :

- Relecture de la fiche projet
- Lecture de la documentation du template Smarty

### Séance n°2 (15/10/2020)

#### Début de la mise en place de l'architecture

De simples "Hello World" ont pu être complétés cette séance.<br>
En poussant un peu cela, nous avons pu avoir une première version d'un routeur, d'un contrôleur, de requêtes à la base de données et de templates Smarty.

Concrètement, nous avons actuellement deux pages : une qui affiche un var_dump de tous nos produits et une autre qui affiche uniquement un var_dump d'un produit selon l'id passé en paramètre de l'URL. Bien que relativement sommaire, cela constitue une modeste base de notre site.

De plus, nous avons pu commencer à correctement organiser notre Github :
- Chaque ajout passe par une branche distincte de la master
- Chaque branche est liée à une issue
- Chaque pull request doit être acceptée et relue par un autre membre du groupe

#### A faire pour la prochaine séance :

- Aller sur le serveur Discord
- Définir toutes les requêtes SQL
- S'être mis d'accord sur l'UI
- Compléter la gestion du rooting pour les nouvelles pages

### Vincent - 31/10/2020

Développement de l'issue 12 "Créer la view permettant d'afficher tous les produits".

On voit désormais tous nos produits ainsi que leurs informations (description, prix, image) sur la page d'accueil.<br>
Quelques fonctions ont été modifiées ainsi que le template. Une réorganisation des images et l'ajout d'un fichier `style.css` ont aussi été effectués.

### Webographie

#### Smarty
- http://fredods.com/creer-votre-site-avec-smarty-en-mvc-partie-1/
- https://www.smarty.net/docsv2/fr/
- https://www.smarty.net/docsv2/fr/language.function.foreach.tpl

#### OpenClassrooms
- https://openclassrooms.com/fr/courses/4670706-adoptez-une-architecture-mvc-en-php/4682351-creer-un-routeur

#### PDO
- https://phpdelusions.net/pdo_examples/select

## DREVET Yoann
## FOLLEAS Brice
## VEBER Vincent