<form id="formComment" name="commentsForm" method="post" action="/core/handler_comment.php">
    <label>Author<br>
        <input name="author" type="text"><br>
    </label>
    <textarea name="text" rows="8" cols="70">Текст сообщения...</textarea><br>
    <input type="submit" name="button">
    <input type="hidden" name="idPost" value="<?php echo $this->id_post ?>">
</form>