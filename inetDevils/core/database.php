<?php

class database
{
    const server = "localhost";
    const USER = "root";
    const PASS = "";

    public $db;

    public function __construct()
    {
        $this->db = mysql_connect(self::server, self::USER, self::PASS);
        mysql_select_db("inetdevils", $this->db);
        mysql_set_charset('utf8');
    }
}

?>