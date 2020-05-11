<?php 
require("./database.php");
?>
<html lang="en">
<head>
  <title>Library System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Borrow</h2>
  <p>These are the records of books taken by the library members!</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Staff SSN</th>
        <th>Member SSN</th>
        <th>ISBN</th>
        <th>Issue Date</th>
        <th>Return Date</th>
        <th>Returned On</th>
        <th>Grace Period Expired</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM borrow";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['Staff_SSN'].'</td>
                        <td>'.$row['Member_SSN'].'</td>
                        <td>'.$row['ISBN'].'</td>
                        <td>'.$row['Issue_Date'].'</td>
                        <td>'.$row['Return_Date'].'</td>
                        <td>'.$row['Returned_On'].'</td>
                        <td>'.$row['Grace_Period_Exp'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '7'><td>No Records To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>