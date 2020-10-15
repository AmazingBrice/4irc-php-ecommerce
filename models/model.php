<?php
// C'est ici que nous ferons nos requêtes SQL.

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

// Fonction de connexion à la base de données.
function dbConnect() {
    try {
        $db = new PDO("mysql:host=localhost;dbname=webapp","debian-sys-maint","aR7RIRZbiUZw3dYk");
        return $db;
    } catch(Exception $e) {
        die('Erreur : '.$e->getMessage());
    }
}