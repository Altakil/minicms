<?php
echo header('Content-Type: text/html;charset=UTF-8');
?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type charset=utf-8">
    <title>Блог</title>
    <link href="css/css-registration.css" rel="stylesheet">
    <script src="/template/js/javascript.js"></script>
</head>
<body>
<h1>Welcome, fill in all fields for registration</h1>

<form name="registration" id="reg" method="post" action="/core/handler_registration.php">
    <label>Login</label>
    <input name="login" id="login" type="text">
    <output id="login_used"></output>
    <br>
    <label>Password</label>
    <input name="password" id="pass" type="password">
    <output id="pass_equal"></output>
    <br>
    <label>Repeat password</label>
    <input name="repeat_password" id="repeat" type="password"><br>
    <label>email</label>
    <input name="email" type="text" id="email">
    <output id="email_pattern"></output>
    <br>
    <input type="submit" name="submit">
</form>
<div id="output"></div>
</body>
</html>