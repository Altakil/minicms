<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/admin/model.php');
if (isset($_POST['submit'])) {
    $model = new model();
    $posts = $model->update_user($_POST['id'], $_POST['login'], $_POST['pass'], $_POST['email']);
    $str_header = "/admin/controller.php?admin_option=user";
    echo "<script type='text/javascript'>
                    location.replace('$str_header');
          </script>";
}
?>