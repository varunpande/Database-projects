<?php
$servername = "localhost";
$username = "";
$password = "";
$database = "vbp2538_Db";

// Create connection
$conn = new mysqli($servername, $username, $password,$database);

// Check connection
if ($conn->connect_error) {
    $servername = "";
    $username = "";
    $password = "";
    $database = "";
    die("Connection failed: " . $conn->connect_error);
}
?>