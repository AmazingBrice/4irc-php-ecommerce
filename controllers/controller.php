<?php

require_once('model/ProductManager.php');
require_once('model/BasketManager.php');
require_once('model/UserManager.php');

function listProducts() {
    $products = getProducts();
    echo("products : ");
    var_dump($products);

    //require('listProductsView.php');
}

function displayProduct($id) {
    $product = getProduct($id);
    echo("product : ");
    var_dump($product);

    //require('displayProductView.php');
}
