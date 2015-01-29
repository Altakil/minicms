<?php
$db = mysql_connect("localhost", "root", "");
mysql_select_db("database_cms", $db);
$login = $_GET['login'];
$string_query = "select login from user where login = '$login'";
$res = mysql_query($string_query, $db);
$result = mysql_num_rows($res);
echo $result;
?>