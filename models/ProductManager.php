<?php

namespace PhpProject\Models;

require_once("models/Manager.php");

class ProductManager extends Manager {

    public static function getProducts() {
        $db = Manager::dbConnect();
        $req = $db->query('SELECT id, name, description, price, image FROM Products');

        return $req->fetchAll();
    }

    public static function getProduct($productId) {
        $db = Manager::dbConnect();
        $req = $db->prepare("SELECT id, name, description, price, image FROM Products WHERE id = ?");
        $req->execute([$productId]);

        return $req->fetch();
    }
}
