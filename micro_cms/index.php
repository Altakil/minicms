<?php
//this file is front controller which responsible of include other parts engine
$directory_name = $_SERVER['DOCUMENT_ROOT']; //main directory
$active = '';
session_start();

if (isset($_GET['option'])) {
    $active = htmlspecialchars(trim(strip_tags($_GET['option'])));
    $path_include = $directory_name . '/core/' . $active . '.php';
    if (file_exists($path_include)) {
        require_once($path_include);
        if (class_exists($active)) {
            $_object = new $active;
            $_object->get_body();
        } else {
            echo "review settings code";
        }
    } else {
        echo "No file exists";
    }
} else {
    $active = 'main';
    header("Location: " . $path_include . 'index.php' . '?option=' . $active);
}
?>