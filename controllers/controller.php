<?php

require_once('models/ProductManager.php');
require_once('models/BasketManager.php');
require_once('models/UserManager.php');

function listProducts() {
    $products = \PhpProject\Models\ProductManager::getProducts();

    $smarty = new Smarty();
    $smarty->assign('products', $products);
    $smarty->display('./views/accueil.tpl');

    //require('listProductsView.php');
}

function displayProduct($id) {
    $product = \PhpProject\Models\ProductManager::getProduct($id);

    echo("product : ");
    var_dump($product);

    //require('displayProductView.php');
}

function displayInfoByUser($userId) {
    $userInfo = \PhpProject\Models\UserManager::getInfoByUser($userId);

    echo("user info : ");
    var_dump($userInfo);

    //require('displayProfile.php');
}

function displayBasketByCustomer($customer) {
    $basket = \PhpProject\Models\BasketManager::getBasketByCustomer($customer);

    $smarty = new Smarty();
    $smarty->assign('basket', $basket);
    $smarty->display('./views/basket.tpl');
}

function addProductToBasket($customer, $product, $quantity) {
    $basket = \PhpProject\Models\BasketManager::addProductToBasket($customer, $product, $quantity);

    if ($basket !== false){
 /*       var_dump($basket);
            header('Location: basket.php?action=basket&id=' . $basketId);
    */
    }
}
