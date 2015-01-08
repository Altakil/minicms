<?php
require_once('database.php');

abstract class Core extends database
{
    function __construct()
    {
        parent::__construct();
    }

    abstract function get_body();
}

?>