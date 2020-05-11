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
  <h2>Institute members</h2>
  <p>These are institute members(professors,students and student assistants) at the library!</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>SSN</th>
        <th>Campus flat number</th>
        <th>Campus building name</th>
        <th>Is member professor</th>
        <th>Employee Id if professor</th>
        <th>Is member student</th>
        <th>Student Id if student</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM Institute_members";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['SSN'].'</td>
                        <td>'.$row['Campus_flat_no'].'</td>
                        <td>'.$row['Campus_bldg_name'].'</td>
                        <td>'.$row['Is_Proff'].'</td>
                        <td>'.$row['EID'].'</td>
                        <td>'.$row['Is_Student'].'</td>
                        <td>'.$row['Sid'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '7'><td>No Books To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>
