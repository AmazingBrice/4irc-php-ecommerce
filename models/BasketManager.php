<?php

public function getBasketByCustomer($customer) {
    $db = dbConnect();

    $req = $db->query('SELECT customer, product, quantity FROM Basket WHERE customer = ?');
    $req->execute([$customer]);

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