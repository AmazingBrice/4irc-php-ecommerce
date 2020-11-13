<?php

namespace PhpProject\Models;

require_once("models/Manager.php");

class BasketManager extends Manager {

    public static function getBasketByCustomer($customerId) {
        $db = Manager::dbConnect();
        $req = $db->prepare(
        'SELECT customer, id, name, description, price, image, quantity 
        FROM Basket 
        JOIN Products ON Products.id = Basket.product WHERE customer = ?');
        $req->execute([$customerId]);

        return $req->fetchAll();
    }

    public static function addProductToBasket($customer, $product, $quantity) {
        $db = Manager::dbConnect();

        $req = $db->prepare('INSERT INTO Basket(customer, product, quantity) VALUES(?, ?, ?)');
        $affectedLines = $req->execute(array($customer, $product, $quantity));

        return $affectedLines;
    }
}
