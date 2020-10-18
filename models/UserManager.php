<?php

namespace PhpProject\Models;

require_once("models/Manager.php");

class UserManager extends Manager {

    public function getInfoByUser($userId) {
        $manager = new Manager();
        $db = $manager->dbConnect();

        $req = $db->query('SELECT id, firstname, familyname, address, username FROM Users WHERE id = ?');
        $req->execute([$userId]);

        return $req->fetch();
    }
}