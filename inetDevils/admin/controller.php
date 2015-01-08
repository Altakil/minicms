<?php
session_start();
require_once($_SERVER['DOCUMENT_ROOT'] . '/admin/model.php');
require_once($_SERVER['DOCUMENT_ROOT'] . '/admin/view.php');

if (isset($_GET['admin_option'])) {
    if (isset($_SESSION['login']) || isset($_COOKIE['login']) && isset($_COOKIE['pass'])) {
        if ($_COOKIE['login'] == 'admin' && $_COOKIE['pass'] == md5('12345')) {
            $model = new model();
            $posts = $model->get_all_post();
            $users = $model->get_all_user();
            $view = new view();
            switch ($_GET['admin_option']) {
                case 'admin' :
                    $view->main();
                    break;
                case 'post' :
                    $view->list_post($posts);
                    break;
                case 'post_edit' :
                    $data_post = $model->get_post($_GET['id']);
                    $view->edit_post($data_post);
                    break;
                case 'add_article' :
                    $view->insert_post();
                    break;
                case 'user' :
                    $view->list_user($users);
                    break;
                case 'user_edit' :
                    $data_post = $model->get_user($_GET['id']);
                    $view->edit_user($data_post);
                    break;
                case 'file' :
                    $view->load_file();
            }
        }
    }
}
?>