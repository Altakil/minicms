<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type charset=utf-8">
    <title>admin!</title>
    <link href="/admin/template/css/style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="/admin/template/js/tinymce/tinymce.min.js"></script>
</head>
<body>
<script>
    tinyMCE.init({
// General options
        mode : "exact",
        elements : "editText",
        theme : "modern",
        language : "uk",
        plugins : "image,pagebreak,layer,table,save,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,template",
// Theme options
        theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,media,help,code,|,insertdate,inserttime,|,forecolor,backcolor",
        theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,|,sub,sup,|,charmap,emotions,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4 : "",
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "none",
        theme_advanced_resizing : true,
        theme_advanced_path : false
    });
</script>
