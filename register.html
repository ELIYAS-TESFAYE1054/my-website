<?php
$firstName="";
$lastName="";
$gender="";
$password="";
$email="";
$confrimPassword="";
$phoneNUmber="";
//database connection
$conn=mysqli_connect("localhost","root","","pharmacy");
if(isset($_POST['Register'])){
    $firstName=mysqli_real_escape_string($conn, $_POST['firstName']);
    $lastName=mysqli_real_escape_string($conn, $_POST['lasttName']);
    $gender=mysqli_real_escape_enum($conn, $_POST['gender']);
    $password=mysqli_real_escape_string($conn, $_POST['password']);
    $email=mysqli_real_escape_string($conn, $_POST['email']);
    $confrimPassword=mysqli_real_escape_string($conn, $_POST['confrimPassword']);
    $phoneNUmber=mysqli_real_escape_bigint($conn, $_POST['phoneNumber']);
}
?>




mizgeba
<!--<?php

$email = "";
$phoneNumber = "";
$err = "";

// Database connection
$host = 'localhost:4306';
$username = 'root';
$password = '';
$dbname = 'pharmacy';
//create connection
$conn = new mysqli('localhost:4306', 'root', 'tecno@ela', 'pharmacy');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error());
}
if (isset($_POST['login'])){
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phoneNumber = mysqli_real_escape_string($conn, $_POST['phoneNumber']);

    //check already exist
    $sql = "SELECT * FROM medicine WHERE email = '$email' and phoneNumber = '$phoneNumber'  LIMIT 1";
    $result = mysqli_query($conn, $sql);
   if (empty($email)) {
        $err = "Email is empty";
    } else if (empty($phoneNumber)) {
        $err = "Phone number is empty";
    } else if(mysqli_num_rows($result) == 1) {
            header('Location: drug.php');
        }else{
            $err = "invalid email and phone number!!!" . mysqli_error($conn);
        }
}

?>-->






mizgeba2
<?php
$firstName = "";
$lastName = "";
$gender = "";
$password = "";
$email = "";
$confirmPassword = "";
$phoneNumber = "";
$err = "";
$id = "";


// Database connection
$host = 'localhost:4306';
$username = 'root';
$password = '';
$dbname = 'pharmacy';
//create connection
$conn = new mysqli('localhost:4306', 'root', '', 'pharmacy');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error());
}
if (isset($_POST['Register'])) {
    // Retrieve and sanitize input
    $firstName = mysqli_real_escape_string($conn, $_POST['firstName']);
    $lastName = mysqli_real_escape_string($conn, $_POST['lastName']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phoneNumber = mysqli_real_escape_string($conn, $_POST['phoneNumber']);
    // Basic validation
    if (empty($firstName)) {
        $err = "First name is empty";
    } else if (empty($lastName)) {
        $err = "Last name is empty";
    } else if (empty($gender)) {
        $err = "Gender is not selected";
    } else if (empty($password)) {
        $err = "Password is empty";
    }  else if (empty($email)) {
        $err = "Email is empty";
    } else if (empty($phoneNumber)) {
        $err = "Phone number is empty";
    } else {
        // Check if user already exists
        $sql = "SELECT * FROM medicine WHERE email = '$email' LIMIT 1";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 1) {
            $err = "User already exists with this email.";
        } else {
            // Insert into users table
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
            $insert = "INSERT INTO medicine (firstName, lastName, gender, password, email,  phoneNumber)
                       VALUES ('$firstName', '$lastName', '$gender', '$hashedPassword', '$email', '$phoneNumber')";

            if (mysqli_query($conn, $insert)) {
                /*header('Location: home.php');*/
                echo '<div style ="height:100px; width:400px;color:green; background:white;border:2px solid;
                 margin:auto; diplay:flex;justify-content:center; align-items:center; text-align: center;">
                <h2 style>insert successfully!!!</h2>
                </div>';
                exit();
            } else {
                $err = "Registration failed: " . mysqli_error($conn);
            }
        }
    } 
}

if (isset($_POST['search'])) {
    $id = mysqli_real_escape_string($conn, $_POST['id']);

    $sql = "SELECT * FROM medicine WHERE id = '$id'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        // Populate variables to fill form
        $firstName = $row['firstName'];
        $lastName = $row['lastName'];
        $gender = $row['gender'];
        $email = $row['email'];
        $phoneNumber = $row['phoneNumber'];
       // $id = $row['id']; // for update and delete
    } else {
        $err = "No user found with ID: $id";
    }
}

    if (isset($_POST['delete'])) {
    $deleteId = mysqli_real_escape_string($conn, $_POST['delete_id']);

    $delete = "DELETE FROM medicine WHERE id = '$deleteId'";

    if (mysqli_query($conn, $delete)) {
        echo "<p style='color:green;'>Record deleted successfully!</p>";
    } else {
        echo "<p style='color:red;'>Delete failed: " . mysqli_error($conn) . "</p>";
    }
}

if (isset($_POST['Update'])) {
  $firstName = $row['firstName'];
        $lastName = $row['lastName'];
        $gender = $row['gender'];
        $email = $row['email'];
        $phoneNumber = $row['phoneNumber'];

    $update = "UPDATE medicine 
               SET firstName='$firstName', lastName='$lastName', gender='$gender', email='$email', phoneNumber='$phoneNumber'
               WHERE id='$id'";

    if (mysqli_query($conn, $update)) {
        echo "<p style='color:green;'>Record updated successfully!</p>";
    } else {
        echo "<p style='color:red;'>Update failed: " . mysqli_error($conn) . "</p>";
    }
}

?>







mizgeba_2
<?php

$email = "";
$phoneNumber = "";
$err = "";

// Database connection
$host = 'localhost:4306';
$username = 'root';
$password = '';
$dbname = 'pharmacy';
//create connection
$conn = new mysqli('localhost:4306', 'root', 'tecno@ela', 'pharmacy');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error());
}
if (isset($_POST['login'])){
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phoneNumber = mysqli_real_escape_string($conn, $_POST['phoneNumber']);

    //check already exist
    $sql = "SELECT * FROM medicine WHERE email = '$email' and phoneNumber = '$phoneNumber'  LIMIT 1";
    $result = mysqli_query($conn, $sql);
   if (empty($email)) {
        $err = "Email is empty";
    } else if (empty($phoneNumber)) {
        $err = "Phone number is empty";
    } else if(mysqli_num_rows($result) == 1) {
            header('Location: Mizgeba2.php');
        }else{
            $err = "invalid email and phone number!!!" . mysqli_error($conn);
        }
}

?>


