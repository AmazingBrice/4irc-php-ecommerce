<?php

require_once("models/DatabaseManager.php");

class ProductManager extends DatabaseManager {

    public function getProducts() {
        $dbManager = new DatabaseManager();
        $db = $dbManager->dbConnect();

        $req = $db->query('SELECT id, name, description, price FROM Products');

        return $req->fetch();
    }

    public function getProduct($productId) {
        $dbManager = new DatabaseManager();
        $db = $dbManager->dbConnect();

        $req = $db->prepare("SELECT id, name, description, price FROM Products WHERE id = ?");
        $req->execute([$productId]);

        return $req->fetch();
    }
}