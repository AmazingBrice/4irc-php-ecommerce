<?php
session_start();

require('./libs/smarty/Smarty.class.php');
require('./controllers/controller.php');

// Initialisation Smarty.
$smarty = new Smarty();

// Le corps de la page.
// $smarty->display('./views/accueil.tpl');

// Fonction de routing.
try {
    if (isset($_GET['action'])) {
        if ($_GET['action'] == 'listProducts') {
            listProducts();
        }
        elseif ($_GET['action'] == 'displayBasket') {
            $smarty->display('./views/basket.tpl');
        }
        elseif ($_GET['action'] == 'addProductToBasket') {
            if (!empty($_POST['customer']) && !empty($_POST['product']) && !empty($_POST['quantity'])) {
                addProductToBasket($_POST['customer'], $_POST['product'], $_POST['quantity']);
            }
            else {
                throw new Exception('Erreur : Impossible d\'ajouter au panier, éléments manquants.');
            }
        }
        elseif ($_GET['action'] == 'displayProduct') {
            if (isset($_GET['id']) && $_GET['id'] > 0) {
                displayProduct($_GET['id']);
            }
            else {
                throw new Exception('Erreur : Impossible d\'afficher ce produit, son id n\'existe pas.');
            }
        }
        else {
            throw new Exception('Erreur : Impossible d\'afficher cette page.');
        }
    }
    else {
        listProducts();
    }
}
catch(Exception $e) {
    die('Erreur : ' . $e->getMessage());    
    // Il faudrait rajouter un template d'erreur pour afficher les erreurs de manière plus propre à l'utilisateur.
    // $errorMessage = $e->getMessage();
    // require('view/errorView.php');
}
