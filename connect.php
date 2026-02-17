<?php
require "connection.php";
$firstName = $_POST['firstName'];
$lastName = $_POST['lastName'];
$gender = $_POST['gender'];
$password = $_POST['password'];
$email = $_POST['email'];
$confrimPassword = $_POST['confrimPassword'];
$phoneNumber = $_POST['phoneNumber'];


if($conn->connect_error){
    die("connection failed : ". $conn->connect_error);
}else{
    /*$stmt = $conn->prepare("insert into test(firstName,lastName,gender,password,email,confrimPassword,phoneNumber) values(?,?,?,?,?,?,?)");*/
    $stmt->bind_param("ssss",$firstName,$lastName,$gender,$password,$email,$confrimPassword,$phoneNumber);
    $stmt->execute();
    echo "Registration successfully...";
    $stmt->close();
    $conn->close();
}
?>