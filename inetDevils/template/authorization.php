<?php
echo header('Content-Type: text/html;charset=UTF-8');
?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type charset=utf-8">
    <title>Блог</title>
    <link href="css/css-registration.css" rel="stylesheet">
</head>
<body>
<h1>Welcome, fill in all fields for authorization</h1>

<form name="registration" id="reg" method="post" action="/core/authorization_handler.php">
    <label>Login</label>
    <input name="login" id="login" type="text"><br>
    <label>Password</label>
    <input name="password" id="pass" type="password"><br>
    <input type="submit" name="submit">
</form>
<div id="output"></div>
</body>
</html>