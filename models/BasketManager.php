<?php

namespace PhpProject\Models;

require_once("models/Manager.php");

class BasketManager extends Manager {

    public function getBasketByCustomer($customer) {
        $manager = new Manager();
        $db = $manager->dbConnect();

        $req = $db->query('SELECT customer, product, quantity FROM Basket WHERE customer = ?');
        $req->execute([$customer]);

        return $req->fetch();
    }

    public function addProductToBasket($customer, $product, $quantity) {
        $manager = new Manager();
        $db = $manager->dbConnect();

        $req = $db->prepare('INSERT INTO Basket(customer, product, quantity) VALUES(?, ?, ?)');
        $affectedLines = $comments->execute(array($customer, $product, $quantity));

        return $affectedLines;
    }
}