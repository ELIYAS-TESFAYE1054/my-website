<?php
require "connection.php";
$sql="CREATE DATABASE IF NOT EXISTS pharma";
if(mysqli_query($conn,$sql)){
        echo "Database created successfully";
    }else{
        echo "Database creating error:". mysqli_error($conn);
    }
    mysqli_close($conn);
?>