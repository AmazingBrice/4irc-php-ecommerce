<?php

namespace PhpProject\Models;

class Manager {
    protected static function dbConnect() {
        return new \PDO("mysql:host=localhost;dbname=webapp","debian-sys-maint","aR7RIRZbiUZw3dYk");
    }
}
