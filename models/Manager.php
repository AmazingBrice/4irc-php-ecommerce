<?php

namespace PhpProject\Models;

class Manager
{
    protected function dbConnect()
    {
        $db = new \PDO("mysql:host=localhost;dbname=webapp","debian-sys-maint","aR7RIRZbiUZw3dYk");
        return $db;
    }
}