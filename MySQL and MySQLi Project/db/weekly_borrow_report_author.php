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
  <h2>Weekly Borrowing activity</h2>
  <p>By Author</p>
  <div class="table-responsive">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Author</th>
        <th>Number of books borrowed</th>
      </tr>
    </thead>
    <tbody>
        <?php
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT a.Author,COUNT(*) AS NUMBER_OF_BOOKS_BORROWED
                FROM borrow AS b,Available_Books AS a
                WHERE b.ISBN = a.ISBN
                AND
                b.Issue_Date BETWEEN SUBDATE(CURDATE(), WEEKDAY(CURDATE()))
                AND
                DATE_ADD((SELECT CURDATE() - INTERVAL (WEEKDAY(CURDATE())+1)DAY),INTERVAL 7 DAY)
                GROUP BY a.Author";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo'<tr>
                        <td>'.$row['Author'].'</td>
                        <td>'.$row['NUMBER_OF_BOOKS_BORROWED'].'</td>
                    </tr>';
                    }
        }
        else {
            echo "<tr colspan = '2'><td>No Data To Display</td><tr>";
        }
        $conn->close();
        ?>
    </tbody>
  </table>
</div>
</div>

</body>
</html>