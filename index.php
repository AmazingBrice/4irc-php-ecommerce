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
elseif ($_GET['action'] == 'addProductToBasket') {
    if (isset($_GET['id']) && $_GET['id'] > 0) {
        if (!empty($_POST['customer']) && !empty($_POST['product']) && !empty($_POST['quantity'])) {
            addProductToBasket($_GET['id'], $_POST['customer'], $_POST['product']), $_POST['quantity']);
        }
        else {
            echo 'Erreur : tous les champs ne sont pas remplis !';
        }
    }
    else {
    echo 'Erreur : aucun identifiant de produit envoyé';
    }
}
else {
    listProducts();
}


