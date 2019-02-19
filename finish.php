<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">

</head>

<body>
<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Вітаємо, <?=$_COOKIE['user_name']?></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <form action="<?php echo $_SERVER['PHP_SELF'];?>" class="navbar-form navbar-right" method="post">
                <a href="cabinet.php">Персональний кабінет</a>
                <button type="submit" class="btn btn-success" name='exit' value='Вийти'>Вийти</button>
            </form>
        </div>
    </div>
</nav>
<!-- Main jumbotron for a primary marketing message or call to action -->
<form action="<?=$next_page?>" method="post">
    <div class="jumbotron">
        <div class="container">
            <h2>
                Дякуємо що виділили трохи часу і прошли тест на оцінку класу діяльності.
                Ви можете ознайомитися з результатами у своєму персональному кабінеті
            </h2>
        </div>
    </div>
    <div class="container">
        <div class="col-md-1"></div>
        <div class="row">
        </div>
    </div>
</form>

<footer>

</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
</body>
</html>




<!--@header("Location: ". $_SERVER["REQUEST_URI"]); // редирект-->
<!--// exit(); // если нужно прервать скрипт-->