<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
//////////////////////////////////////////////////////////////////
$query = "                                                  
SELECT question_id, question, question_type            
FROM questions
ORDER BY question_id";
//////////////////////////////////////////////////////////////////
$result = $link->query($query);
if (isset($_GET['question_id'])){
    setcookie("question_id",$_GET['question_id'],time()+60*60*24);
    header("Location: question_answers.php");
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin panel</title>
</head>
<body>
<br><br>
<div style="width: 900px;">
    <h3 align="center">Питання</h3>
    <br>
    <table border="1">
        <caption>Таблиця наявних питань</caption>
        <tr>
            <th>Номер питання</th>
            <th>Питання</th>
            <th>Тип питання</th>
        </tr>
        <?php
        while ($row = mysqli_fetch_assoc($result)){
            echo "<tr><td>".$row['question_id']."</td><td><a href='?question_id=".$row['question_id']."'>".$row['question']."</a></td><td>".$row['question_type']."</td>
            <td><input type=\"submit\" name=\"edit\" value=\"редагувати\"><input type=\"submit\" name=\"delete\" value=\"видалити\"></td>
            </tr>";
        }
        ?>
    </table>


    <!--    <div id="chart" style="width: 900px; height: 500px;"></div>-->
</div>
</body>
</html>
