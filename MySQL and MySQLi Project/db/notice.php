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
  <h2>Notice</h2>
  <p>The notice table holds records about the notices sent to member, It gets populated by the triggers set to send notices for membership renewal and books that are due.</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>SSN of Staff(who sent the message)</th>
        <th>SSN of Member(to whom notice was sent)</th>
        <th>Date of issuing the notice</th>
        <th>Message body</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM notice";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['Staff_SSN'].'</td>
                        <td>'.$row['Member_SSN'].'</td>
                        <td>'.$row['Date_Of_Issue'].'</td>
                        <td>'.$row['Issue_Msg'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '4'><td>No Notices To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>
