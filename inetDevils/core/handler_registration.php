<?php
echo header('Content-Type: text/html;charset=UTF-8');
session_start();
require_once('database.php');
if (isset($_POST['submit'])) {
    if (isset($_SESSION['login']) || isset($_COOKIE['login']) && isset($_COOKIE['pass'])) {
        echo "Ви пользователь " . $_SESSION['login'] . " уже зарегистрированы и авторизованы";
    } else {
        $correct = check_data();
        if ($correct) {
            $database = new database();
            $db = $database->db;

            $login = trim(strip_tags($_POST['login']));
            $password = md5(trim(strip_tags($_POST['password'])));
            $email = trim(strip_tags($_POST['email']));

            mysql_query("insert into user (login, pass, email) values ('$login', '$password', '$email')", $db) or die("error in database");
            $_SESSION['login'] = $login;
            setcookie('login', $login, time()+3600, '/');
            setcookie('pass', $password, time()+3600, '/');
            echo $_COOKIE['login'].$_COOKIE['pass'];
            header('Location:/index.php?option=main');
        } else {
            echo "fill all fields valid";
        }
    }

}

function check_data()
{
    $database = new database();
    $db = $database->db;
    if ($_POST['login'] == "") return false;
    if ($_POST['password'] == "") return false;
    if ($_POST['repeat_password'] == "") return false;
    if ($_POST['email'] == "") return false;

    $login = $_POST['login'];
    $res = mysql_query("select * from user where login = '$login'", $db);
    if (@mysql_num_rows($res) != 0) return false;

    if (!preg_match("/((\w*)\d*)*@(\w)*\.{1}(\w){1,4}/", $_POST['email'])) return false;
    return true;
}
?>