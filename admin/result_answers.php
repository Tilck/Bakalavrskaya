<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
//////////////////////////////////////////////////////////////////
$query = "                                                  
SELECT r.answer_id, a.answer, count(*) as number            
FROM results AS r 
INNER JOIN answers AS a 
ON r.answer_id = a.answer_id
GROUP BY answer_id";
//////////////////////////////////////////////////////////////////
$result = $link->query($query);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin panel</title>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
        google.charts.load('current',{'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Answer','Кол-во ответов'],
                <?php
                while ($row = mysqli_fetch_assoc($result)){
                    echo "['".$row["answer"]."', ".$row["number"]."],";
                }
                ?>
            ]);
            var option = {
                title: 'Kakoi to text',
                is3D:true
            };
            var chart = new google.visualization.PieChart(document.getElementById('chart'));//LineChart
            chart.draw(data,option);
        }
    </script>
</head>
<body>
<br><br>
<div style="width: 900px;">
    <h3 align="center">TEXT</h3>
    <br>
    <div id="chart" style="width: 900px; height: 500px;"></div>
</div>
</body>
</html>
