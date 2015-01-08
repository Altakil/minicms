<?php
echo header('Content-Type: text/html;charset=UTF-8');
session_start();
require_once('database.php');
if (isset($_POST['submit'])) {
    if (isset($_SESSION['login']) || isset($_COOKIE['login']) && isset($_COOKIE['pass'])) {
        echo "Ви пользователь " . $_SESSION['login'] . " уже зарегистрированы и авторизованы";
    } else {
        $database = new database();
        $db = $database->db;

        $login = trim(strip_tags($_POST['login']));
        $password = md5(trim(strip_tags($_POST['password'])));

        $result = mysql_query("select login, pass from user where login = '$login' and pass = '$password'", $db) or die("error in database");
        if (mysql_num_rows($result) == 1) {
            $_SESSION['login'] = $login;
            setcookie('login', $login, time()+3600, '/');
            setcookie('pass', $password, time()+3600, '/');
            header('Location:/index.php?option=main');
        } else {
            echo "не правильно login/password";
        }
    }

}

?>