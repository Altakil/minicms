<?php
require_once('database.php');
if (isset($_POST['button'])) {
    if (isset($_POST['author']) && isset($_POST['text'])) {
        $author = htmlspecialchars(trim(strip_tags($_POST['author'])));
        $text = htmlspecialchars(trim(strip_tags($_POST['text'])));
        $idPost = htmlspecialchars(trim(strip_tags($_POST['idPost'])));
        if (!empty($author) && !empty($text)) {
            $database = new database();
            $db = $database->db;
            $str = "insert into comments (id_news, Author, text) values ('$idPost', '$author', '$text')";
            $result = mysql_query($str, $db);
            if (!$result) {
                echo("data don't by inserted" . mysql_error());
            } else {
                $str_header = "/index.php?option=post&id=$idPost";
                header('Location:' . $str_header);
            }
        } else {
            echo "enter all fields";
        }
    } else {
        echo "don't have fields";
    }
} else {
    echo "Button not enter";
}
?>