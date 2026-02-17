<?php
$host = 'localhost';
$user = 'root';
$password = '';
$port = 4306;
$conn = new mysqli($host,$user,$password,'',$port);
//connection
if($conn->connect_error){
die('connection faild : '.$conn_connect_error());
}else{
    echo "Database is connected succfully";
}
?>