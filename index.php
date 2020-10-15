<?php
session_start();

require('./libs/smarty/Smarty.class.php');
require('./controllers/controller.php');

// Initialisation Smarty
$smarty = new Smarty();

// Le corps de la page.

$smarty->display('./views/accueil.tpl');

// Fonction de routing.
if (isset($_GET['action'])) {
    if ($_GET['action'] == 'listProducts') {
        listProducts();
    }
    elseif ($_GET['action'] == 'displayProduct') {
        if (isset($_GET['id']) && $_GET['id'] > 0) {
            displayProduct($_GET['id']);
        }
        else {
            echo 'Erreur : aucun identifiant ID renseigné.';
        }
    }
}
else {
    listProducts();
}


