<?php

namespace PhpProject\Models;

require_once("models/Manager.php");

class ProductManager extends Manager {

    public function getProducts() {
        $manager = new Manager();
        $db = $manager->dbConnect();

        $req = $db->query('SELECT id, name, description, price FROM Products');

        return $req->fetch();
    }

    public function getProduct($productId) {
        $manager = new Manager();
        $db = $manager->dbConnect();

        $req = $db->prepare("SELECT id, name, description, price FROM Products WHERE id = ?");
        $req->execute([$productId]);

        return $req->fetch();
    }
}