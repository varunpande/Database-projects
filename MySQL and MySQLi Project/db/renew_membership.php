<?php 
require("./database.php");

if(isset($_POST["input_member"])){
    $input_member = filter_var($_POST["input_member"], FILTER_SANITIZE_STRING);
}
else{
    echo "Member SSN not provided!";
    exit;
}

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "UPDATE members SET Expiry_date = DATE_FORMAT(CURDATE(), '%Y-%m-%d'), Issued_date = DATE_FORMAT(DATE_ADD(CURDATE(), INTERVAL 4 year), '%Y-%m-%d') WHERE SSN = ".$input_member;

if ($conn->query($sql) === TRUE) {
    echo "Membership updated successfully";
} else {
    echo "Error updating membership: " . $conn->error;
}

$conn->close();
?>