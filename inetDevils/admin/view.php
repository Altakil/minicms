<?php

class view
{

    private $begin;
    private $end;

    private function load()
    {
        $this->begin = file_get_contents($_SERVER['DOCUMENT_ROOT'] . '/admin/template/main.php');
        $this->end = file_get_contents($_SERVER['DOCUMENT_ROOT'] . '/admin/template/end_main.php');
    }

    public function main()
    {
        $this->load();
        echo $this->begin;
        echo "<a href='/admin/controller.php?admin_option=post'>редактировать статьи</a>";
        echo "<a href='/admin/controller.php?admin_option=add_article'>создать статью</a>";
        echo "<a href='/admin/controller.php?admin_option=user'>редактировать пользователей</a>";
        echo "<a href='/admin/controller.php?admin_option=file'>загрузить файл</a>";
        echo $this->end;
    }

    public function list_post($posts)
    {
        $this->load();
        echo $this->begin;
        foreach ($posts as $value) {
            echo "<a href='/admin/controller.php?admin_option=post_edit&id=" . $value['id'] . "'>" . $value['title'] . "</a>";
        }
        echo $this->end;
    }

    public function edit_post($data)
    {
        $this->load();
        echo $this->begin;
        printf("<form name='formEdit' action='/admin/handler_post.php' method='post'>
                    <label>тема</label>
                    <input name='title' type='text' value='%s'>
                    <label>текст статті</label>
                    <textarea name='text' cols='80' rows='30' id='editText'>%s</textarea>
                    <label>шлях до картинки</label>
                    <input name='img' type='text' value='%s'>
                    <label>дата</label>
                    <input name='date_created' type='text' value='%s'>
                    <input type='hidden' name='id' value='%s'>
                    <input type='submit' name='submit'>
                </form>", $data['title'], $data['text'], $data['url_img'], $data['date_created'], $data['id']);
        echo $this->end;
    }

    public function insert_post()
    {
        $this->load();
        echo $this->begin;
        printf("<form name='formEdit' action='/admin/handler_add_post.php' method='post'>
                    <label>Заголовок</label>
                    <input name='title' type='text'>
                    <label>текст статьи</label>
                    <textarea name='text' cols='80' rows='30' id='editText'></textarea>
                    <label>путь к картинке</label>
                    <input name='img' type='text'>
                    <input type='submit' name='submit'>
                </form>");
        echo $this->end;
    }

    public function list_user($users)
    {
        $this->load();
        echo $this->begin;
        foreach ($users as $value) {
            echo "<a href='/admin/controller.php?admin_option=user_edit&id=" . $value['id'] . "'>" . $value['login'] . "</a>";
        }
        echo $this->end;
    }

    public function edit_user($data)
    {
        $this->load();
        echo $this->begin;
        printf("<form name='formEdit' action='/admin/handler_user.php' method='post'>
                    <label>логин</label>
                    <input name='login' type='text' value='%s'>
                    <label>пароль</label>
                    <input type='text' name='pass' value='%s'>
                    <label>email</label>
                    <input name='email' type='text' value='%s'>
                    <input type='hidden' name='id' value='%s'>
                    <input type='submit' name='submit'>
                </form>", $data['login'], $data['pass'], $data['email'], $data['id']);
        echo $this->end;
    }

    public function load_file()
    {
        printf("<form name='formLoad' action='/admin/upload.php' method='post' enctype='multipart/form-data'>
                    <input type='file' name='filename'><br><br>
                    <input type='submit' value='Загрузить'><br>
                </form>");
    }
}

?>