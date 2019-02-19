<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
include_once ('types.php');
$yes;
$no;
//////////////////////////////////////////////////////////////////
$query = "                                                  
SELECT u.first_name, u.last_name, r.question_id, r.answer_id, q.question, a.answer            
FROM userstest AS u
INNER JOIN results AS r
ON u.user_id = r.user_id
INNER JOIN questions AS q
ON r.question_id = q.question_id
INNER JOIN answers AS a
ON r.answer_id = a.answer_id
WHERE u.user_id = '".$_COOKIE['user_id']."'
ORDER BY r.result_id";
//////////////////////////////////////////////////////////////////
$result = $link->query($query);
$user_query = "SELECT first_name, last_name FROM userstest WHERE user_id = '".$_COOKIE['user_id']."' ";
$user_result = $link->query($user_query);
$user_row = mysqli_fetch_assoc($user_result);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin panel</title>
</head>
<body>
<h3 align="center"><?=$user_row['first_name']." ".$user_row['last_name']?></h3>
<div class="col-md-6" style="float: right;">
    <?
    ?>
</div>
<br><br>
<div style="width: 900px;">
    <br>
    <table border="1">
        <caption>Таблиця відповідей користувача</caption>
        <tr>
            <th>Номер питання</th>
            <th>Питання</th>
            <th>Відповідь</th>
        </tr>
    <?php
    while ($row = mysqli_fetch_assoc($result)){
        if ($row['answer']==='Так')$yes++;
        elseif ($row['answer']==='Ні')$no++;
        echo "<tr><td>".$row['question_id']."</td><td>".$row['question']."</td><td>".$row['answer']."</td></tr>";
    }
    echo "Кількість відповідей \"Так\" ".$yes."<br>";
    echo "Кількість відповідей \"Ні\" ".$no."<br>";
    echo "Число по модулю буде = ".$sum=abs($yes-$no)."<br>";
    echo '<h3>Клас діяльності користувача $Zv_S__St_D</h3>';
    switch ($sum) {
        case $sum>15:
            echo $St_S__Ob_d;
            break;
        case $sum<15:
            echo $Gr_D__Zv_S;
            break;
        case $sum=15:
            echo $Zv_S__St_D;
            break;
        case $sum=0:
            echo $Ob_d__Gr_S;
            break;
    }
    ?>
    </table>

<!--    <div id="chart" style="width: 900px; height: 500px;"></div>-->
</div>
</body>
</html>
