<?php
require_once($_SERVER['DOCUMENT_ROOT'].'/admin/model.php');
    if(isset($_POST['submit'])){
        $model = new model();
        $posts = $model->update_post($_POST['id'], $_POST['title'], $_POST['text'], $_POST['img'], $_POST['date_created']);
        $str_header = "/admin/controller.php?admin_option=post";
        echo "<script type='text/javascript'>
                    location.replace('$str_header');
              </script>";
    }
?>