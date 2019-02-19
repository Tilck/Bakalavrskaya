<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
// количество записей, выводимых на странице
$per_page=1;
// получаем номер страницы
if (isset($_GET['page'])) $page=($_GET['page']-1); else $page=0;
// вычисляем первый оператор для LIMIT
$start=abs($page*$per_page);





$answer = $link->query("SELECT * FROM `answers`");
if (isset($_POST['submit'])) {
    $error;
    if (!$_POST['answer']) {
        $error = "Ответьте на вопрос!";
    }
    else {
        $sql = "INSERT INTO `results` (`user_id`, `question_id`, `answer_id`) VALUES ('1', '".$_POST['question']."', '".$_POST['answer']."')";
        $save = $link->query($sql);
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
                // составляем запрос и выводим записи
                // переменную $start используем, как нумератор записей.
                $q="SELECT * FROM `registration` LIMIT $start,$per_page";
                $res=$link->query($q);
                while($row=mysqli_fetch_assoc($res)) {
                    echo ++$start.". ".$row['question']."<br>\n";
                    echo "<input type=\"hidden\" name=\"question\" value=".$row['question_id'].">";
                }
                ?>
            </h1>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-1"></div>
            <?php
            while ($count = mysqli_fetch_assoc($answer)){
                echo "<div class=\"col-md-2\"><p>".$count['answer']."</p><input type=\"radio\" name=\"answer\" value=".$count['answer_id']."></div>";
            }
            ?>
        </div>
        <hr>
        <label class="alert col-md-2 col-md-offset-4"><?=$error?></label>
        <input type="submit" name="submit" class="btn btn-primary btn-lg col-md-offset-4">
    </div>
</form>

<footer>
    <center>
        <?
        // дальше выводим ссылки на страницы:
        $q="SELECT count(*) FROM `registration`";
        $res=$link->query($q);
        $row=mysqli_fetch_row($res);
        $total_rows=$row[0];
        $num_pages=ceil($total_rows/$per_page);
        for($i=1;$i<=$num_pages;$i++) {
            if ($i-1 == $page) {
                echo $i." ";
            } else {
                echo '<a href="'.$_SERVER['PHP_SELF'].'?page='.$i.'">'.$i."</a> ";
            }
        }
        ?>
    </center>
</footer>
<!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../js/bootstrap.js"></script>
</body>
</html>