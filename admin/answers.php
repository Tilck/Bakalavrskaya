<?php
header("Content-Type: text/html; charset=utf-8");
$link = mysqli_connect("localhost","root","","bacal");
//////////////////////////////////////////////////////////////////
$query = "                                                  
SELECT r.answer_id, r.question_id, a.answer, q.question count(*) as number            
FROM results AS r 
INNER JOIN answers AS a 
ON r.answer_id = a.answer_id
INNER JOIN questions AS q
ON r.question_id = q.question_id
WHERE r.question_id = '".$_COOKIE['question_id']."'
GROUP BY answer_id";
//////////////////////////////////////////////////////////////////
$result = $link->query($query);
//******************************************************************
//this would be the output of your sql statement
$resultArray = array(array("this"=>5, "is" =>3, "a"=>4, "test"=>1),
    array("this"=>25, "is" =>23, "a"=>42, "test"=>12),
    array("this"=>50, "is" =>30, "a"=>40, "test"=>10));
//we find all the keys to use as "headers"
$keys = array_keys($resultArray[0]);
//loop through each key adding the needed marks
$tempData = '';
foreach($keys as $key){
    $tempData .= "'$key',";
}
//this removes the last comma (though you might not need to)
$data ="[".rtrim($tempData,',')."], \n";
//more looping, marking and comma removal
//just through your whole list of results
foreach($resultArray as $r){
    $tempData = '';
    foreach($r as $val){
        $tempData .= "'$val',";
    }
    $data .= "[".rtrim($tempData,',')."], \n";
}
$data = "[".rtrim($data,", \n")."]";
//echo result
echo $data;
//******************************************************************
?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin panel</title>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['bar']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Питання', 'Sales', 'Expenses', 'Profit'],
                <?= $data;?>
            ]);

            var options = {
                chart: {
                    title: 'Company Performance',
                    subtitle: 'Sales, Expenses, and Profit: 2014-2017',
                }
            };

            var chart = new google.charts.Bar(document.getElementById('chart_div'));

            chart.draw(data, google.charts.Bar.convertOptions(options));
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row">
        <h3 align="center">TEXT</h3>
        <br>
        <div id="chart_div" class="col-md-8" style="width: 900px; height: 500px;">
        </div>
    </div>
</div>
</body>
</html>
