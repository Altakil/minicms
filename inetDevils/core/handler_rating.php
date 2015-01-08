<?php
session_start();
require_once('database.php');
if (isset($_POST['button'])) {
    if (isset($_POST['rating'])) {
        $rating = htmlspecialchars(trim(strip_tags($_POST['rating'])));
        $id_post = htmlspecialchars(trim(strip_tags($_POST['id_post'])));
        if (!empty($rating) && !empty($id_post)) {
            $_SESSION['rating'] = $rating;
            $_SESSION['id_post'] = $id_post;
            $database = new database();
            $db = $database->db;
            $str = "insert into rating (id_post, rating) values ('$id_post', '$rating')";
            $result = mysql_query($str, $db);
            if (!$result) {
                echo("data don't by inserted" . mysql_error());
            } else {
                $str_header = "/index.php?option=post&id=$id_post";
                header('Location:' . $str_header);
            }
        }
    } else {
        echo "check settings";
    }
} else {
    echo "Not press button";
}
?>