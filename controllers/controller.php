<?php

require_once('models/ProductManager.php');
require_once('models/BasketManager.php');
require_once('models/UserManager.php');

function listProducts() {
    $productManager = new ProductManager(); // Cr�ation d'un objet
    $products = $productManager->getProducts(); // Appel d'une fonction de cet objet

    echo("products : ");
    var_dump($products);

    //require('listProductsView.php');
}

function displayProduct($id) {
    $productManager = new ProductManager();
    $product = $productManager->getProduct($id);

    echo("product : ");
    var_dump($product);

    //require('displayProductView.php');
}

function displayInfoByUser($userId) {
    $userManager = new UserManager();
    $userInfo = $userManager->getInfoByUser($userId);

    echo("user info : ");
    var_dump($userInfo);

    //require('displayProfile.php');
}

function displayBasketByCustomer($customer) {
    $basketManager = new BasketManager();
    $basket = $basketManager->getBasketByCustomer($customer);

    echo("basket : ");
    var_dump($basket);

    //require('displayBasket.php');
}

function addProductToBasket($customer, $product, $quantity)
{
    $basketManager = new BasketManager();
    $basket = $basketManager->addProductToBasket($customer, $product, $quantity);

    if ($basket !== false){
        var_dump($basket);
            header('Location: basket.php?action=basket&id=' . $basketId);
    }
}