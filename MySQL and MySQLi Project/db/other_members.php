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
  <h2>Other members</h2>
  <p>These are other members, which are not from the institute at the library!</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>SSN</th>
        <th>Email-Id of member</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM other_members";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['SSN'].'</td>
                        <td>'.$row['Email_Id'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '2'><td>No Members To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>
