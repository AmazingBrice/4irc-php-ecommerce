<?php

// Products
function getProducts() {
    $db = dbConnect();

    $req = $db->query('SELECT id, name, description, price FROM Products');

    return $req->fetch();
}

function getProduct($id) {
    $db = dbConnect();

    $req = $db->prepare("SELECT id, name, description, price FROM Products WHERE id = ?");
    $req->execute([$id]);

    return $req->fetch();
}

// Baksets

function getBasketByCustomer($customer) {
    $db = dbConnect();

    $req = $db->query('SELECT customer, product, quantity FROM Basket WHERE customer = ?');
    $req->execute([$customer]);

    return $req->fetch();
}

// Users

function getInfoByUser($id) {
    $db = dbConnect();

    $req = $db->query('SELECT id, firstname, familyname, address, username FROM Users WHERE id = ?');
    $req->execute([$id]);

    return $req->fetch();
}

// Database connection.
function dbConnect() {
    try {
        $db = new PDO("mysql:host=localhost;dbname=webapp","debian-sys-maint","aR7RIRZbiUZw3dYk");
        return $db;
    } catch(Exception $e) {
        die('Error : '.$e->getMessage());
    }
}