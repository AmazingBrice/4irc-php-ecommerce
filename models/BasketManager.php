<?php

namespace PhpProject\Models;

require_once("models/Manager.php");

class BasketManager extends Manager {

    public static function getBasketByCustomer($customer) {
        $db = Manager::dbConnect();
        $req = $db->query('SELECT customer, product, quantity FROM Basket WHERE customer = ?');
        $req->execute([$customer]);

        return $req->fetch();
    }

    public static function addProductToBasket($customer, $product, $quantity) {
        $db = Manager::dbConnect();

        $req = $db->prepare('INSERT INTO Basket(customer, product, quantity) VALUES(?, ?, ?)');
        $affectedLines = $comments->execute(array($customer, $product, $quantity));

        return $affectedLines;
    }
}
