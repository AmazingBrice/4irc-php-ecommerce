<?php

require_once('models/ProductManager.php');
require_once('models/BasketManager.php');
require_once('models/UserManager.php');

function listProducts() {
    $productManager = new \PhpProject\Models\ProductManager();
    $products = $productManager->getProducts();
 //   $products = new \PhpProject\Models\ProductManager()::getProducts();

    echo("products : ");
    var_dump($products);

    //require('listProductsView.php');
}

function displayProduct($id) {
    $productManager = new \PhpProject\Models\ProductManager();
    $product = $productManager->getProduct($id);

    echo("product : ");
    var_dump($product);

    //require('displayProductView.php');
}

function displayInfoByUser($userId) {
    $userManager = new \PhpProject\Models\UserManager();
    $userInfo = $userManager->getInfoByUser($userId);

    echo("user info : ");
    var_dump($userInfo);

    //require('displayProfile.php');
}

function displayBasketByCustomer($customer) {
    $basketManager = new \PhpProject\Models\BasketManager();
    $basket = $basketManager->getBasketByCustomer($customer);

    echo("basket : ");
    var_dump($basket);

    //require('displayBasket.php');
}

function addProductToBasket($customer, $product, $quantity)
{
    $basketManager = new \PhpProject\Models\BasketManager();
    $basket = $basketManager->addProductToBasket($customer, $product, $quantity);

    if ($basket !== false){
 /*       var_dump($basket);
            header('Location: basket.php?action=basket&id=' . $basketId);
    */
    }
}