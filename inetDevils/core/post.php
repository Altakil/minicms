<?php
require_once('core.php');

class post extends core
{
    public function get_body()
    {
        require_once('/template/header.php');
        require_once('/template/menu.php');
        require_once('/template/logo.php');
        $this->get_content();
        require_once("/template/form_comment.php");
        require_once('/template/footer.php');
    }

    private $id_post;
    const clip_text = 150;

    private function get_content()
    {
        $html_post = file_get_contents($_SERVER['DOCUMENT_ROOT'] . '\template\post.php');
        $bool = preg_match_all("/%(.*)%/", $html_post, $matches);
        if ($bool == true) {
            $post = $this->get_post();
            $temp = $html_post;
            for ($i = 0; $i < count($matches[0]); $i++) {
                $temp = str_replace($matches[0][$i], $post[$matches[1][$i]], $temp);
            }
            $temp = str_replace("{{link}}", "/index.php?option=post&id=" . $post['id'], $temp);

            $amount = $this->get_all_comments($this->id_post);
            $amount = count($amount);
            $temp = str_replace("{{comments}}", $amount, $temp);

            echo $temp;
            $this->show_rating();
        }
        unset($html_post);
        unset($post);
        unset($temp);
        $this->show_comments();
    }

    private function get_post()
    {
        if (isset($_GET['id'])) {
            $id = htmlspecialchars(trim(strip_tags($_GET['id'])));
            $this->id_post = $id;
        } else {
            echo "invalid settings post";
        }
        $str_query = "select id, title, text, url_img, date_created from post where id = $id";
        $query = mysql_query($str_query, $this->db);
        $post = mysql_fetch_assoc($query);

        return $post;
    }

    private function clip_comments($mas)
    {
        for ($i = 0; $i < count($mas); $i++) {
            if (strlen($mas[$i]['text']) > self::clip_text) {
                $len = strpos($mas[$i]['text'], ' ', self::clip_text);
                $mas[$i]['text'] = substr($mas[$i]['text'], 0, $len);
            }
        }
        return $mas;
    }

    public function get_all_comments($id)
    {
        $str_query = "select id_news, Author, text from comments where id_news = $id order by id desc";
        $query = mysql_query($str_query, $this->db);
        while ($row = mysql_fetch_assoc($query)) {
            $comments[] = $row;
        }

        return $this->clip_comments($comments);
    }

    private function show_comments()
    {
        $html_comments = file_get_contents($_SERVER['DOCUMENT_ROOT'] . '\template\comments.php');
        $bool = preg_match_all("/%(.*)%/", $html_comments, $matches);
        $comments = $this->get_all_comments($this->id_post);
        if ($bool == true && !empty($comments)) {
            foreach ($comments as $value_comments) {
                $temp = $html_comments;
                for ($i = 0; $i < count($matches[0]); $i++) {
                    $final_comments = str_replace($matches[0][$i], $value_comments[$matches[1][$i]], $temp);
                    $temp = $final_comments;
                }
                echo $final_comments;
                unset($temp);
            }
        }
    }

    private function show_rating()
    {
        $count_voice = 0;
        $id = $this->id_post;
        $str_header = "/index.php?option=post&id=$id";
        $html_comments = file_get_contents($_SERVER['DOCUMENT_ROOT'] . '\template\rating.php');
        $str_query = "select rating from rating where id_post = $id";
        $result = mysql_query($str_query);
        while ($row = mysql_fetch_assoc($result)) {
            $res[] = $row;
            $count_voice++;
        }
        $middle = 0;
        if (!empty($res)) {
            foreach ($res as $value) {
                $middle += $value['rating'];
            }
            $middle = round($middle / $count_voice);
            $write = str_replace("{{rating}}", $middle . " количество голосов " . $count_voice, $html_comments);
            $write = str_replace("{{id-post}}", $id, $write);
        } else {
            $write = str_replace("{{rating}}", "За этот материал ещё никто не голосовал", $html_comments);
            $write = str_replace("{{id-post}}", $id, $write);
        }
        if (isset($_SESSION['rating']) && $_SESSION['id_post'] === $this->id_post) {
            $delete = " <form id='del' name='form_del' method='post' action='$str_header'><input name='submit_del' type='submit' value='удалить'></form>";
            $write = str_replace("<span style='display:none'>{{you-rating}}</span>", "<label>Ваша оценка материала:" . $_SESSION['rating'] . "</label>" . $delete, $write);
        }
        if (isset($_POST['submit_del'])) {
            $parameter_id = $_SESSION['id_post'];
            $parameter_rating = $_SESSION['rating'];
            $query = "delete from rating where id_post = '$parameter_id' and rating = '$parameter_rating' limit 1";
            $deleted = mysql_query($query);
            if (!$deleted) {
                echo "errors" . mysql_error();
            } else {
                unset($_SESSION['rating']);
                unset($_SESSION['id_post']);
                echo "<script type='text/javascript'>
                        location.replace('$str_header');
                      </script>";
            }
        }
        echo $write;
    }
}

?>