<?php 
require("./database.php");

if(isset($_POST["issue_ISBN"])){
    $input_ISBN_in = filter_var($_POST["issue_ISBN"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book ISBN not provided!";
    exit;
}

if(isset($_POST["input_member"])){
    $input_input_member = filter_var($_POST["input_member"], FILTER_SANITIZE_STRING);
}
else{
    echo "Member not provided!";
    exit;
}

if(isset($_POST["input_Issuer"])){
    $input_input_Issuer = filter_var($_POST["input_Issuer"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book issuer not provided!";
    exit;
}

$input_ISBN_in = $conn->real_escape_string($input_ISBN_in);
$input_input_member = $conn->real_escape_string($input_input_member);
$input_input_Issuer = $conn->real_escape_string($input_input_Issuer);

// prepare and bind
$sql = "CALL issueBook1('".$input_ISBN_in."','".$input_input_Issuer."','".$input_input_member."')";

if (!($res = $conn->query($sql))) {
    echo "Error: <br>" . $conn->error;
}

$row = $res->fetch_assoc();
echo $row['Msg'];

$conn->close();
?>