<?php 
require("./database.php");

if(isset($_POST["input_member_SSN"])){
    $SSN_in = filter_var($_POST["input_member_SSN"], FILTER_SANITIZE_STRING);
}
else{
    echo "Member SSN not provided!";
    exit;
}

if(isset($_POST["input_member_name"])){
    $Name_in = filter_var($_POST["input_member_name"], FILTER_SANITIZE_STRING);
}
else{
    echo "Member NAME not provided!";
    exit;
}

if(isset($_POST["input_phone"])){
    $phone_in = filter_var($_POST["input_phone"], FILTER_SANITIZE_STRING);
}
else{
    echo "member phone number not provided!";
    exit;
}

if(isset($_POST["flat_no"])){
    $flat_no_in = filter_var($_POST["flat_no"], FILTER_SANITIZE_STRING);
}
else{
    echo "member flat number not provided!";
    exit;
}

if(isset($_POST["input_street_no"])){
    $input_street_no_in = filter_var($_POST["input_street_no"], FILTER_SANITIZE_STRING);
}
else{
    echo "member street number not provided!";
    exit;
}

if(isset($_POST["input_Bldg_name"])){
    $input_Bldg_name_in = filter_var($_POST["input_Bldg_name"], FILTER_SANITIZE_STRING);
}
else{
    echo "member building name not provided!";
    exit;
}

if(isset($_POST["input_Pincode"])){
    $input_Pincode_in = filter_var($_POST["input_Pincode"], FILTER_SANITIZE_STRING);
}
else{
    echo "member pincode not provided!";
    exit;
}

if(isset($_POST["input_Card_number"])){
    $input_Card_number_in = filter_var($_POST["input_Card_number"], FILTER_SANITIZE_STRING);
}
else{
    echo "member card number not provided!";
    exit;
}

if(isset($_POST["input_photo"])){
    $input_photo_in = filter_var($_POST["input_photo"], FILTER_SANITIZE_URL);
}
else{
    echo "member photo not provided!";
    exit;
}

if(isset($_POST["input_out_mem"])){
    $input_out_mem = filter_var($_POST["input_out_mem"], FILTER_SANITIZE_STRING);
    if($input_out_mem == "True"){
        if(isset($_POST["input_Email_Id_oth"])){
            $input_Email_Id_oth = filter_var($_POST["input_Email_Id_oth"], FILTER_SANITIZE_STRING);
        }
        else{
            echo "member email id not provided!";
            exit;
        }
    }
    else{
        if(isset($_POST["input_Campus_flat_no"])){
            $input_Campus_flat_no = filter_var($_POST["input_Campus_flat_no"], FILTER_SANITIZE_STRING);
        }
        else{
            echo "Campus flat input not provided!";
            exit;
        }
        if(isset($_POST["input_Campus_bldg_name"])){
            $input_Campus_bldg_name = filter_var($_POST["input_Campus_bldg_name"], FILTER_SANITIZE_STRING);
        }
        else{
            echo "Campus flat input not provided!";
            exit;
        }
       if(isset($_POST["input_is_proff"])){
            $input_is_proff = filter_var($_POST["input_is_proff"], FILTER_SANITIZE_STRING);
            $input_EID = filter_var($_POST["input_EID"], FILTER_SANITIZE_STRING);
        }
        else{
            echo "is professor input not provided!";
            exit;
        }
        if(isset($_POST["input_is_student"])){
            $input_is_student = filter_var($_POST["input_is_student"], FILTER_SANITIZE_STRING);
            $input_SID = filter_var($_POST["input_SID"], FILTER_SANITIZE_STRING);
        }
        else{
            echo "is student input not provided!";
            exit;
        }
    }
}
else{
    echo "Is outside member not provided!";
    exit;
}

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$SSN_in = $conn->real_escape_string($SSN_in);
$Name_in = $conn->real_escape_string($Name_in);
$phone_in = $conn->real_escape_string($phone_in);
$flat_no_in = $conn->real_escape_string($flat_no_in);
$input_street_no_in = $conn->real_escape_string($input_street_no_in);
$input_Bldg_name_in = $conn->real_escape_string($input_Bldg_name_in);
$input_Pincode_in = $conn->real_escape_string($input_Pincode_in);
$input_Card_number_in = $conn->real_escape_string($input_Card_number_in);
$input_photo_in = $conn->real_escape_string($input_photo_in);
$is_active_in = 'False';
$Total_borrowed_in = '0';
$max_COP_in = '7';
$grace_period_in = '7';
$current_date = getdate();
$issued_date = $current_date['year'].'-'.$current_date['mon'].'-'.$current_date['mday'];
$expiry_date = date_create($issued_date);
date_add($expiry_date,date_interval_create_from_date_string("4 year"));
$expiry_date = date_format($expiry_date,"Y-m-d");
$staff_ssn = '333333333';

// prepare and bind
$sql = $conn->prepare("Insert into members values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
$sql->bind_param("issiisisiiiisssi", $SSN_in, $Name_in, $phone_in,$flat_no_in,$input_street_no_in,$input_Bldg_name_in,$input_Pincode_in,$is_active_in,$Total_borrowed_in,$max_COP_in,$grace_period_in,$input_Card_number_in,$expiry_date,$input_photo_in,$issued_date,$staff_ssn);

if ($sql->execute() === TRUE) {
    if($input_out_mem == "True"){
        $input_Email_Id_oth = $conn->real_escape_string($input_Email_Id_oth);
        $sql = $conn->prepare("Insert into other_members values(?,?)");
        $sql->bind_param("is", $SSN_in,$input_Email_Id_oth);
        $sql->execute();
    }
    else{
        $input_Campus_flat_no = $conn->real_escape_string($input_Campus_flat_no);
        $input_Campus_bldg_name = $conn->real_escape_string($input_Campus_bldg_name);
        $input_is_proff = $conn->real_escape_string($input_is_proff);
        $input_EID = $conn->real_escape_string($input_EID);
        $input_is_student = $conn->real_escape_string($input_is_student);
        $input_SID = $conn->real_escape_string($input_SID);
        $sql = $conn->prepare("Insert into Institute_members values(?,?,?,?,?,?,?)");
        $sql->bind_param("iissisi", $SSN_in,$input_Campus_flat_no,$input_Campus_bldg_name,$input_is_proff,$input_EID,$input_is_student,$input_SID);
        $sql->execute();
    }
    echo "Member Created Succesfully!";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>