<?php

namespace PhpProject\Models;

require_once("models/Manager.php");

class UserManager extends Manager {

    public static function getInfoByUser($userId) {
        $db = Manager::dbConnect();

        $req = $db->query('SELECT id, firstname, familyname, address, username FROM Users WHERE id = ?');
        $req->execute([$userId]);

        return $req->fetch();
    }
}