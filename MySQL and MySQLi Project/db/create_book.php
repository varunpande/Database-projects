<?php 
require("./database.php");

if(isset($_POST["input_ISBN"])){
    $input_ISBN_in = filter_var($_POST["input_ISBN"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book ISBN not provided!";
    exit;
}

if(isset($_POST["input_subject_area"])){
    $input_subject_area_in = filter_var($_POST["input_subject_area"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book subject area not provided!";
    exit;
}

if(isset($_POST["input_title"])){
    $input_title_in = filter_var($_POST["input_title"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book title not provided!";
    exit;
}

if(isset($_POST["input_author"])){
    $input_author_in = filter_var($_POST["input_author"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book author not provided!";
    exit;
}

if(isset($_POST["input_count_of_books"])){
    $input_count_of_books_in = filter_var($_POST["input_count_of_books"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book count not provided!";
    exit;
}

if(isset($_POST["input_description"])){
    $input_description_in = filter_var($_POST["input_description"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book Description not provided!";
    exit;
}

if(isset($_POST["input_edition"])){
    $input_edition_in = filter_var($_POST["input_edition"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book edition not provided!";
    exit;
}

if(isset($_POST["input_Binding_type"])){
    $input_Binding_type_in = filter_var($_POST["input_Binding_type"], FILTER_SANITIZE_STRING);
}
else{
    echo "Book Binding type not provided!";
    exit;
}

if(isset($_POST["input_can_lend"])){
    $input_can_lend_in = filter_var($_POST["input_can_lend"], FILTER_SANITIZE_URL);
}
else{
    echo "Can Lend not provided!";
    exit;
}

if(isset($_POST["input_reason"])){
    $input_reason_in = filter_var($_POST["input_reason"], FILTER_SANITIZE_URL);
}

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$input_ISBN_in = $conn->real_escape_string($input_ISBN_in);
$input_subject_area_in = $conn->real_escape_string($input_subject_area_in);
$input_title_in = $conn->real_escape_string($input_title_in);
$input_author_in = $conn->real_escape_string($input_author_in);
$input_count_of_books_in = $conn->real_escape_string($input_count_of_books_in);
$input_description_in = $conn->real_escape_string($input_description_in);
$input_edition_in = $conn->real_escape_string($input_edition_in);
$input_Binding_type_in = $conn->real_escape_string($input_Binding_type_in);
$input_can_lend_in = $conn->real_escape_string($input_can_lend_in);
$input_reason_in = $conn->real_escape_string($input_reason_in);

// prepare and bind
$sql = $conn->prepare("Insert into Available_Books values(?,?,?,?,?,?,?,?,?,?)");
$sql->bind_param("ssssisssss", $input_ISBN_in,$input_subject_area_in,$input_title_in,$input_author_in,$input_count_of_books_in,$input_description_in,$input_edition_in,$input_Binding_type_in,$input_can_lend_in,$input_reason_in);

if ($sql->execute() === TRUE) {
    echo "Book created Succesfully!";
} else {
    echo "Error: <br>" . $conn->error;
}

$conn->close();
?>