<?php
require_once('core.php');

class main extends core
{
    public function get_body()
    {
        require_once('/template/header.php');
        $this->check_user();
        require_once('/template/menu.php');
        require_once('/template/logo.php');
        $this->get_content();
        require_once('/template/pagination.php');
        require_once('/template/footer.php');
    }

    private $post_array = array();
    const clip_text = 350;
    const count_article = 5;

    private function get_content()
    {
        $html_post = file_get_contents($_SERVER['DOCUMENT_ROOT'] . '\template\post.php');
        $this->post_array = $this->get_all_posts();
        $bool = preg_match_all("/%(.*)%/", $html_post, $matches);
        if ($bool == true) {
            $final_article = "";
            foreach ($this->post_array as $value) {
                $temp = $html_post;
                for ($i = 0; $i < count($matches[0]); $i++) {
                    $final_article = str_replace($matches[0][$i], $value[$matches[1][$i]], $temp);
                    $temp = $final_article;
                }

                require_once($_SERVER['DOCUMENT_ROOT'] . "/core/post.php");
                $post = new post();
                $amount = $post->get_all_comments($value['id']);
                $amount = count($amount);
                $final_article = str_replace("{{comments}}", $amount, $final_article);

                $final_article = str_replace("{{link}}", "/index.php?option=post&id=" . $value['id'], $final_article);
                echo $final_article;
                unset($temp);
            }
        } else {
            echo "missing matches";
        }
        unset($final_article);
        unset($html_post);
        unset($matches);
    }

    public function check_user()
    {
        if (isset($_SESSION['login']) || isset($_COOKIE['login']) && isset($_COOKIE['pass'])) {

            if ($_COOKIE['login'] == "admin" || $_COOKIE['pass'] == md5('12345')) {
                echo "<p class='welcome'>Приветствуем " . $_SESSION['login'] ." <a href='/admin/controller.php?admin_option=admin'>перейти в admin</a>". "</p>";
            } else {
                echo "<p class='welcome'>Приветствуем " . $_SESSION['login'] . "</p>";
            }
        }
    }

    private function get_all_posts()
    {
        $sql_parameter = self::count_article;

        $res = mysql_query("select count(*) as col from post", $this->db);
        $row_count = mysql_fetch_assoc($res);
        $col = $row_count['col'];
        $_SESSION['count_page'] = ceil((int)$col / $sql_parameter);

        $str_query = "select id, title, text, url_img, date_created from post order by id desc limit $sql_parameter";
        if (isset($_GET['page_count']) && $_GET['page_count'] >= 2) {
            $num = (int)$_GET['page_count'];
            $_SESSION['page'] = $num;
            $num = ($num - 1) * self::count_article;
            $str_query = "select id, title, text, url_img, date_created from post order by id desc limit $num, $sql_parameter";
        } else {
            unset($_SESSION['page']);
        }
        $query = mysql_query($str_query, $this->db);
        $all_posts = array();
        while ($post = mysql_fetch_assoc($query)) {
            $all_posts[] = $post;
        }

        for ($i = 0; $i < count($all_posts); $i++) {
            if (strlen($all_posts[$i]['text']) > self::clip_text) {
                $len = strpos($all_posts[$i]['text'], ' ', self::clip_text);
                $all_posts[$i]['text'] = substr($all_posts[$i]['text'], 0, $len);
            }
        }

        return $all_posts;
    }
}

?>