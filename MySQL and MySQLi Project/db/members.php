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
  <h2>Members</h2>
  <p>This table represent the base class attributes of members in the library System!</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>SSN</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Flat number</th>
        <th>Street number</th>
        <th>Building Name</th>
        <th>Pincode</th>
        <th>Is member active</th>
        <th>Total books borrowed</th>
        <th>Maximum Check Out Period</th>
        <th>Grace period</th>
        <th>Card number</th>
        <th>Expiry date of card</th>
        <th>Issued date of card</th>
        <th>Staff SSN(issued card by)</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM members";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['SSN'].'</td>
                        <td>'.$row['Name'].'</td>
                        <td>'.$row['Phone'].'</td>
                        <td>'.$row['Flat_no'].'</td>
                        <td>'.$row['Street_no'].'</td>
                        <td>'.$row['BLDG_Name'].'</td>
                        <td>'.$row['Pincode'].'</td>
                        <td>'.$row['Is_active'].'</td>
                        <td>'.$row['Total_borrowed'].'</td>
                        <td>'.$row['Max_COP'].'</td>
                        <td>'.$row['Grace_period'].'</td>
                        <td>'.$row['Card_no'].'</td>
                        <td>'.$row['Expiry_date'].'</td>
                        <td>'.$row['Issued_date'].'</td>
                        <td>'.$row['Staff_SSN'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '15'><td>No Books To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>
