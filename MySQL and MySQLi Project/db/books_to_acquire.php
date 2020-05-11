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
  <h2>Books_To_Acquire</h2>
  <p>These are the books that the library wants to acquire!</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>ISBN</th>
        <th>Staff_SSN</th>
        <th>Subject_Area</th>
        <th>Title</th>
        <th>Author</th>
        <th>Count_of_books</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM Books_To_Acquire";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['ISBN'].'</td>
                        <td>'.$row['Staff_SSN'].'</td>
                        <td>'.$row['Subject_Area'].'</td>
                        <td>'.$row['Title'].'</td>
                        <td>'.$row['Author'].'</td>
                        <td>'.$row['Count_of_books'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '6'><td>No Books To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>
