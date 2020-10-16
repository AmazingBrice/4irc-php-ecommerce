<?php

class ProductManager {

    public function getProducts() {
        $db = $this->dbConnect();

        $req = $db->query('SELECT id, name, description, price FROM Products');

        return $req->fetch();
    }

    public function getProduct($productId) {
        $db = $this->dbConnect();

        $req = $db->prepare("SELECT id, name, description, price FROM Products WHERE id = ?");
        $req->execute([$productId]);

        return $req->fetch();
    }

    // Database connection.
    private function dbConnect() {
        try {
            $db = new PDO("mysql:host=localhost;dbname=webapp","debian-sys-maint","aR7RIRZbiUZw3dYk");
            return $db;
        } catch(Exception $e) {
            die('Error : '.$e->getMessage());
        }
    }
}