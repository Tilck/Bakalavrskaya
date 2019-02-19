<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$department = $_POST['department'];
$organization = $_POST['organization'];
$email = $_POST['email'];
$password1 = $_POST['password1'];
$password2 = $_POST['password2'];
if (isset($_POST['submit']) && $password1 === $password2) {
    $sql = "
    INSERT INTO `userstest` (`first_name`, `last_name`, `department`, `organization`, `email`, `password`, `created_at`)
    VALUES
    ('".$first_name."', '".$last_name."', '".$department."', '".$organization."', '".$email."', '".md5($password1)."', '".time()."')
";
    $save = $link->query($sql);
    header("Location: /thanks.php");
}
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
            <form action="" class="navbar-form navbar-right" method="post">
                <div class="form-group">
                    <input type="text" placeholder="Email" class="form-control" name="enter_email">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" class="form-control" name="enter_password">
                </div>
                <button type="submit" class="btn btn-success" name="enter_submit">Sign in</button>
            </form>
        </div>
    </div>
</nav>
<div class="container">

    <form action="" class="form-signin" method="post">
        <h2 class="form-signin-heading">Будь ласка, пройдіть реєстрацію</h2>
        <input type="text" class="form-control" placeholder="Ім*я" required name="first_name">
        <input type="text" class="form-control" placeholder="Прізвище" required name="last_name">
        <input type="text" class="form-control" placeholder="Департамент (факультет)" required name="department">
        <input type="text" class="form-control" placeholder="Назва фірми (ВУЗ)" required style="margin-bottom: 10px;" name="organization">
        <label>Дані для входу у персональну сторінку та для відправлення результатів опитування</label>
        <input type="email" class="form-control" placeholder="E-mail адреса" required name="email">
        <input type="password" class="form-control" placeholder="Пароль" required style="margin: 0" name="password1">
        <input type="password" class="form-control" placeholder="Повторити пароль" required name="password2">
        <p>
            Ваші персональні дані не будуть повідомлені стороннім особам. В якості
            результатів будуть наведені виключно статистичні дані (середньо квадратичні, медіанні, дисперсні)
            без зазначення будь-яких персональних даних. Персональні дані потрібні для повідомлення результатів
            на E-mail та для віднесення особи до певної професійної групи. <strong>Дякуємо за співпрацю!</strong>
        </p>
        <button class="btn btn-lg btn-primary btn-block" name="submit" type="submit">Зареєструватися</button>
    </form>

</div>
</body>
</html>
