<?php
require_once($_SERVER['DOCUMENT_ROOT'].'/admin/model.php');
if(isset($_POST['submit'])){
    $model = new model();
    $posts = $model->insert_post($_POST['title'], $_POST['text'], $_POST['img']);
    $str_header = "/admin/controller.php?admin_option=post";
    echo "<script type='text/javascript'>
                    location.replace('$str_header');
          </script>";
}
?>