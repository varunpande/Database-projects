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
  <h2>Available Books</h2>
  <p>These are the books that are available in the library!</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>ISBN</th>
        <th>Subject Area</th>
        <th>Title</th>
        <th>Author</th>
        <th>Count_of_books</th>
        <th>Description</th>
        <th>Edition</th>
        <th>Binding Type</th>
        <th>Can Lend</th>
        <th>Reason</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT * FROM Available_Books";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['ISBN'].'</td>
                        <td>'.$row['Subject_Area'].'</td>
                        <td>'.$row['Title'].'</td>
                        <td>'.$row['Author'].'</td>
                        <td>'.$row['Count_of_books'].'</td>
                        <td>'.$row['Descr'].'</td>
                        <td>'.$row['Edi'].'</td>
                        <td>'.$row['B_type'].'</td>
                        <td>'.$row['Can_lend'].'</td>
                        <td>'.$row['Reason'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '10'><td>No Books To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>
