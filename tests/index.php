<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
$answer = $link->query("SELECT * FROM `answers`");
//print_r($answer);
//echo "<br>";
$question = $link->query("SELECT * FROM `registration`");
//print_r($question);
//echo "<br>";
if (isset($_POST['submit'])) {
    $error;
    if (!$_POST['answer']) {
        $error = "Ответьте на вопрос!";
        header("Location: test.php");
    }
    else {
        $sql = "INSERT INTO `results` (`user_id`, `question_id`, `answer_id`) VALUES ('1', '".$_POST['question']."', '".$_POST['answer']."')";
        $save = $link->query($sql);
        $res = mysqli_fetch_assoc($question);
    }
}
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
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Sign in</button>
            </form>
        </div><!--/.navbar-collapse -->
    </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<form action="" method="post">
    <div class="jumbotron">
        <div class="container">
            <h1>
                <?
                while ($res = mysqli_fetch_assoc($question)){
                    echo $res['question']."<br>";
                    echo "<input type=\"hidden\" name=\"question\" value=".$res['question_id'].">";
                    break;
                }
                ?>
            </h1>
        </div>
    </div>
    <div class="container">
        <div class="col-md-1"></div>
        <div class="row">
            <?php
            while ($count = mysqli_fetch_assoc($answer)){
                echo "<div class=\"col-md-2\"><p>".$count['answer']."</p><input type=\"radio\" name=\"answer\" value=".$count['answer_id']."></div>";
            }
            ?>
        </div>
        <hr>
        <input type="submit" name="submit" class="btn btn-primary btn-lg col-md-offset-9">
    </div>
</form>

<footer>
    <label class="alert col-md-offset-4"><?=$error?></label>
</footer>
<!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
</body>
</html>




<!--@header("Location: ". $_SERVER["REQUEST_URI"]); // редирект-->
<!--// exit(); // если нужно прервать скрипт-->