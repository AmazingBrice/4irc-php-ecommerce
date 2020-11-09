<?php

require_once('models/ProductManager.php');
require_once('models/BasketManager.php');
require_once('models/UserManager.php');

function listProducts() {
    $products = \PhpProject\Models\ProductManager::getProducts();

    // On coupe la traduction pour créer du suspense et pousser les acheteurs à cliquer sur le produit.
    foreach($products as &$product) {
        $product["description"] = substr($product["description"], 0, 32) . '...';
    }

    $smarty = new Smarty();
    $smarty->assign('products', $products);
    $smarty->display('./views/accueil.tpl');
}

function displayProduct($id) {
    $product = \PhpProject\Models\ProductManager::getProduct($id);

    $smarty = new Smarty();
    $smarty->assign('product', $product);
    $smarty->display('./views/productDetails.tpl');
}

function displayInfoByUser($userId) {
    $userInfo = \PhpProject\Models\UserManager::getInfoByUser($userId);

    echo("user info : ");
    var_dump($userInfo);

    //require('displayProfile.php');
}

function displayBasketByCustomer($customer) {
    $basket = \PhpProject\Models\BasketManager::getBasketByCustomer($customer);

    echo("basket : ");
    var_dump($basket);

    //require('displayBasket.php');
}

function addProductToBasket($customer, $product, $quantity) {
    $basket = \PhpProject\Models\BasketManager::addProductToBasket($customer, $product, $quantity);

    if ($basket !== false){
 /*       var_dump($basket);
            header('Location: basket.php?action=basket&id=' . $basketId);
    */
    }
}
