<?php

public function getInfoByUser($userId) {
    $db = dbConnect();

    $req = $db->query('SELECT id, firstname, familyname, address, username FROM Users WHERE id = ?');
    $req->execute([$userId]);

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