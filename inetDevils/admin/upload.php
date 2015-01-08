<! DOCTYPE html>
<html>
<head>
    <title>Load file</title>
</head>
<body>
<?php
if($_FILES["filename"]["size"] > 1024*8*1024)
{
    echo ("Размер файла превышает допустимый");
    exit;
}
if(is_uploaded_file($_FILES["filename"]["tmp_name"]))
{
    move_uploaded_file($_FILES["filename"]["tmp_name"], $_SERVER['DOCUMENT_ROOT']."/template/img_temp/".$_FILES["filename"]["name"]);
    echo("Путь к вашему файлу на сервере "." /template/img_temp/".$_FILES["filename"]["name"]);
} else {
    echo("error");
}
?>
</body>
</html>