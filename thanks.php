<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
if (isset($_POST['enter_submit'])){
    $query = "
SELECT `user_id`, `first_name`,`email`,`password` 
FROM `userstest` 
WHERE `email`='".$_POST['enter_email']."' 
AND `password`='".md5($_POST['enter_password'])."'";
    $result = $link->query($query);
    $row = mysqli_fetch_assoc($result);
    if ($row['email'] && $row['password']){
        setcookie("user_id",$row['user_id'],time()+60*60*24);
        setcookie("user_name",$row['first_name'],time()+60*60*24);
        header("Location: question.php");
    }
    else {
        echo "Ви ввели невірний логін або пароль";
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
    <title>Signin Template for Bootstrap</title>
    <link href="css/bootstrap.css" rel="stylesheet">
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
            <a class="navbar-brand" href="#">Визначення класу діяльності людини</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">

        </div>
    </div>
</nav>
<div class="container">

    <form action="" class="form-signin" method="post">
        <h2 class="form-signin-heading">Будь ласка, залогуйтеся</h2>
        <input type="text" placeholder="Email" class="form-control" name="enter_email">
        <label></label>
        <input type="password" placeholder="Password" class="form-control" name="enter_password">
        <button type="submit" class="btn btn-lg btn-primary btn-block" name="enter_submit">Увійти</button>
    </form>

</div>
</body>
</html>
