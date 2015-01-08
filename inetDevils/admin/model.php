<?php
class model
{
    const server = "localhost";
    const USER = "root";
    const PASS = "";
    public $db;

    public function connect()
    {
        $this->db = mysql_connect(self::server, self::USER, self::PASS);
        mysql_select_db("inetdevils", $this->db);
        mysql_set_charset('utf8');
    }

    public function get_all_post()
    {
        $this->connect();
        $db = $this->db;
        $array_post = array();
        $result = mysql_query("select id, title, text, url_img, date_created from post order by id desc", $db);
        while ($res = mysql_fetch_array($result)) {
            $array_post[] = $res;
        }
        return $array_post;
    }

    public function get_post($id)
    {
        $this->connect();
        $db = $this->db;
        $result = mysql_query("select id, title, text, url_img, date_created from post where id = '$id'", $db);
        $res = mysql_fetch_assoc($result);
        return $res;
    }

    public function insert_post($title, $text, $url_img)
    {
        $this->connect();
        $db = $this->db;
        mysql_query("insert into post (title, text, url_img, date_created) values ('$title', '$text', '$url_img', date(now()))", $db) or die("Ошибки з database");
    }

    public function update_post($id, $title, $text, $url_img, $date)
    {
        $this->connect();
        $db = $this->db;
        mysql_query("update post set title = '$title', text = '$text', url_img = '$url_img', date_created = '$date' where id = '$id'", $db) or die("Ошибки з database");
    }


    public function get_all_user()
    {
        $this->connect();
        $db = $this->db;
        $array_post = array();
        $result = mysql_query("select id, login, pass, email from user order by id desc", $db);
        while ($res = mysql_fetch_array($result)) {
            $array_post[] = $res;
        }
        return $array_post;
    }

    public function get_user($id)
    {
        $this->connect();
        $db = $this->db;
        $result = mysql_query("select id, login, pass, email from user where id = '$id'", $db);
        $res = mysql_fetch_assoc($result);
        return $res;
    }

    public function update_user($id, $login, $pass, $email)
    {
        $this->connect();
        $db = $this->db;
        mysql_query("update user set login = '$login', pass = '$pass', email = '$email' where id = '$id'", $db) or die("Ошибки з database");
    }
}
?>