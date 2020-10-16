<?php

class BasketManager {

    public function getBasketByCustomer($customer) {
        $db = $this->dbConnect();

        $req = $db->query('SELECT customer, product, quantity FROM Basket WHERE customer = ?');
        $req->execute([$customer]);

        return $req->fetch();
    }

    public function addProductToBasket($customer, $product, $quantity) {
        $db = $this->dbConnect();
        
        $req = $db->prepare('INSERT INTO Basket(customer, product, quantity, date) VALUES(?, ?, ?, NOW())');
        $affectedLines = $comments->execute(array($customer, $product, $quantity));
        return $affectedLines;
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