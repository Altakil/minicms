<form id="rating" name="vote" method="post" action="/core/handler_rating.php">
    <label>
        <input type="radio" name="rating" value="1">1
    </label>
    <label>
        <input type="radio" name="rating" value="2">2
    </label>
    <label>
        <input type="radio" name="rating" value="3">3
    </label>
    <label>
        <input type="radio" name="rating" value="4">4
    </label>
    <label>
        <input type="radio" name="rating" value="5">5
    </label>
    <input type="hidden" name="id_post" value="{{id-post}}">
    <input type="submit" name="button" value="оценить" id="send">
    <label>Средняя оценка материала: {{rating}} </label>
</form>
<span style='display:none'>{{you-rating}}</span>