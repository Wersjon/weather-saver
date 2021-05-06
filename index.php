<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>Weather forecast</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            background-color: #CCCCCC; 
        }
        #myChart {
            height: 50px;
            width: 100%;
        }
    </style>
</head>
<body>
    
<?php
    $dbConnection = new mysqli("localhost", "root", "", "weather");
    if ($dbConnection->connect_error) {
      die("Something went wrong when connecting to database, please try again later, error message: " . $dbConnection->connect_error);
    }
?>
<h1>Graph about weather in Jastrzębie-Zdrój!</h1>
<canvas id="myChart"></canvas>
<script>
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: [<?php
                $result = $dbConnection->query("SELECT time_taken FROM city_weather WHERE city_name = 'Jastrzębie-Zdrój' ORDER BY id ASC");
                if ($result->num_rows > 0) {
                  while($row = $result->fetch_assoc()) {
                    echo "'$row[time_taken]', ";
                  }
                }
            ?>],
        datasets: [{
            label: 'Weather in Jastrzębie-Zdrój [celsius]',
            data: [<?php
                $result = $dbConnection->query("SELECT temperature FROM city_weather WHERE city_name = 'Jastrzębie-Zdrój' ORDER BY id ASC");
                if ($result->num_rows > 0) {
                  while($row = $result->fetch_assoc()) {
                    echo "$row[temperature], ";
                  }
                }
            ?>],
            borderColor: 'rgb(255, 0, 0)',
            fill: false,
            tension: 0.1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>

<?php
      $dbConnection->close();
?>
</body>
</html>