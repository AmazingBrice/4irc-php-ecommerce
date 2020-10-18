<?php

require_once("models/DatabaseManager.php");

class BasketManager extends DatabaseManager {

    public function getBasketByCustomer($customer) {
        $dbManager = new DatabaseManager();
        $db = $dbManager->dbConnect();

        $req = $db->query('SELECT customer, product, quantity FROM Basket WHERE customer = ?');
        $req->execute([$customer]);

        return $req->fetch();
    }

    public function addProductToBasket($customer, $product, $quantity) {
        $dbManager = new DatabaseManager();
        $db = $dbManager->dbConnect();

        $req = $db->prepare('INSERT INTO Basket(customer, product, quantity, date) VALUES(?, ?, ?, NOW())');
        $affectedLines = $comments->execute(array($customer, $product, $quantity));

        return $affectedLines;
    }
}