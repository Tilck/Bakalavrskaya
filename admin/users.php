<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
//////////////////////////////////////////////////////////////////
$query = "                                                  
SELECT user_id,
first_name,
last_name,
department,
organization,
email,
created_at            
FROM userstest
ORDER BY user_id";
//////////////////////////////////////////////////////////////////
$result = $link->query($query);
if (isset($_GET['user_id'])){
    setcookie("user_id",$_GET['user_id'],time()+60*60*24);
    header("Location: users_info.php");
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
    <table border="1">
        <caption>Таблиця наявних питань</caption>
        <tr>
            <th>№</th>
            <th>Користувач</th>
            <th>Департамент</th>
            <th>Організація</th>
            <th>E-mail</th>
            <th>Дата реєстрації</th>
        </tr>
        <?php
        while ($row = mysqli_fetch_assoc($result)){
            echo "<tr><td>".$row['user_id']."</td><td>
            <a href='?user_id=".$row['user_id']."'>".$row['first_name']." ".$row['last_name']."</a>
                </td><td>".$row['department']."</td><td>".$row['organization']."</td><td>".$row['email']."</td><td>".date("d-m-y", $row['created_at'])."</td>
            <td><input type=\"submit\" name=\"edit\" value=\"редагувати\"><input type=\"submit\" name=\"delete\" value=\"видалити\"></td>
            </tr>";
        }
        ?>
    </table>

    <!--    <div id="chart" style="width: 900px; height: 500px;"></div>-->
</div>
</body>
</html>
