<?php
require_once("models/DatabaseManager.php");

class UserManager extends DatabaseManager {

    public function getInfoByUser($userId) {
        $dbManager = new DatabaseManager();
        $db = $dbManager->dbConnect();

        $req = $db->query('SELECT id, firstname, familyname, address, username FROM Users WHERE id = ?');
        $req->execute([$userId]);

        return $req->fetch();
    }
}