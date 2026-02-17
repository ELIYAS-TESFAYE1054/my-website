CREATE DATABASE test;
USE test;
CREATE TABLE pharmacy (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(50) NOT NULL UNIQUE,
    LastName VARCHAR(50) NOT NULL UNIQUE,
    gender  enum('m','f','o')NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    email  VARCHAR(50)NOT NULL UNIQUE,
    confrimPasword VARCHAR(50) NOT NULL UNIQUE,
    phoneNumber bigint(50) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
)





if ($_POST['password'] == $_POST['conf_pass']){
        $user = $_POST['username'];
        $pass = $_POST['password'];

        $hash = md5(rand(0,1000));

        $accres = mysqli_query($connection, "INSERT INTO accounts (street1, suburb, city, postcode, username) VALUES($address, $suburb, $city, $postcode, $username)");
        $account_id = mysqli_insert_id($accres);
        $peopleres = mysqli_query($connection, "INSERT INTO people (lastname, firstname, accounts_id, birthdate, phonenumber, username, password, email, hash) VALUES($lastname, $firstname, $account_id, $birthdate, $phonenumber, $username, $password, $email, $hash)");

        $peoplerows=mysqli_fetch_assoc($peopleres);
        $person_id=$peoplerows[0];

        mysqli_query("INSERT INTO PeopleToRole (role_id) VALUES(1)");
        $email = $_SESSION['email'];
        $p->addContent("User Registered");
}













<?php
$firstName = "";
$lastName = "";
$gender = "";
$password = "";
$email = "";
$confirmPassword = "";
$phoneNumber = "";
$err = "";

// Database connection
$conn = mysqli_connect('localhost', 'root', 'password', 'pharmacy');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['Register'])) {
    // Retrieve and sanitize input
    $firstName = mysqli_real_escape_string($conn, $_POST['firstName']);
    $lastName = mysqli_real_escape_string($conn, $_POST['lastName']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $confirmPassword = mysqli_real_escape_string($conn, $_POST['confirmPassword']);
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
    } else if (empty($confirmPassword)) {
        $err = "Confirm password is empty";
    } else if ($password !== $confirmPassword) {
        $err = "Passwords do not match";
    } else if (empty($email)) {
        $err = "Email is empty";
    } else if (empty($phoneNumber)) {
        $err = "Phone number is empty";
    } else {
        // Check if user already exists
        $sql = "SELECT * FROM users WHERE email = '$email' LIMIT 1";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 1) {
            $err = "User already exists with this email.";
        } else {
            // Insert into users table
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
            $insert = "INSERT INTO users (firstName, lastName, gender, password, email, phoneNumber)
                       VALUES ('$firstName', '$lastName', '$gender', '$hashedPassword', '$email', '$phoneNumber')";

            if (mysqli_query($conn, $insert)) {
                header('Location: home.php');
                exit();
            } else {
                $err = "Registration failed: " . mysqli_error($conn);
            }
        }
    }
}
?>










<?php
$err = "";

// Connect to DB
$conn = mysqli_connect('localhost', 'root', 'password', 'pharmacy');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['Register'])) {
    // Get and sanitize inputs
    $firstName = mysqli_real_escape_string($conn, $_POST['firstName']);
    $lastName = mysqli_real_escape_string($conn, $_POST['lastName']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $confirmPassword = mysqli_real_escape_string($conn, $_POST['confirmPassword']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phoneNumber = mysqli_real_escape_string($conn, $_POST['phoneNumber']);

    // Validate
    if (empty($firstName)) $err = "First name is required.";
    else if (empty($lastName)) $err = "Last name is required.";
    else if (empty($gender)) $err = "Gender is required.";
    else if (empty($password)) $err = "Password is required.";
    else if (empty($confirmPassword)) $err = "Confirm password is required.";
    else if ($password !== $confirmPassword) $err = "Passwords do not match.";
    else if (empty($email)) $err = "Email is required.";
    else if (empty($phoneNumber)) $err = "Phone number is required.";
    else {
        // Check if user exists
        $sql = "SELECT * FROM users WHERE email = '$email' LIMIT 1";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 1) {
            $err = "User already registered with this email.";
        } else {
            // Hash password
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

            // Insert user
            $insert = "INSERT INTO users (firstName, lastName, gender, password, email, phoneNumber)
                       VALUES ('$firstName', '$lastName', '$gender', '$hashedPassword', '$email', '$phoneNumber')";

            if (mysqli_query($conn, $insert)) {
                header("Location: home.php");
                exit();
            } else {
                $err = "Error: " . mysqli_error($conn);
            }
        }
    }
}
?>




<?php
$firstName="";
$lastName="";
$gender="";
$password="";
$email="";
$confrimPassword="";
$phoneNUmber="";
$err="";
//database connection
$conn=mysqli_connect('localhost','root','password','port','pharmacy');
if(isset($_POST['Register'])){
    $firstName=mysqli_real_escape_string($conn, $_POST['firstName']);
    $lastName=mysqli_real_escape_string($conn, $_POST['lasttName']);
    $gender=mysqli_real_escape_enum($conn, $_POST['gender']);
    $password=mysqli_real_escape_string($conn, $_POST['password']);
    $email=mysqli_real_escape_string($conn, $_POST['email']);
    $confrimPassword=mysqli_real_escape_string($conn, $_POST['confrimPassword']);
    $phoneNUmber=mysqli_real_escape_bigint($conn, $_POST['phoneNumber']);

    $sql="select * from medicine firstName='".$firstName."' and lastName='".$lastName."' and gender='".$gender."' and 
    password='".$password."' and email='".$email."' and confrimPassword='".$confrimPassword."' and phoneNumber='".$phoneNUmber."' limit 1";
    //excute
    $result = mysqli_query($conn,$sql);
    //authentication
    if(empty($firstName)){
        $err="first name is empty";
    }else if(empty($lastName)){
        $err="last name is empty";
    }
    else if(empty($gender)){
        $err="gender is not select";
    }
    else if(empty($password)){
        $err="password is empty";
    }
    else if(empty($email)){
        $err="email is empty";
    }
    else if(empty($confrimPassword)){
        $err="con password is empty";
    }
    else if(empty($phoneNUmber)){
        $err="phone number is empty";
    }
    else if(mysqli_num_row($result==1)){
        header('location: home.php');
    }else{
        $err="ther is no another way!";
    }
}
?>








try{
    $conn = new mysqli('localhost', 'root', 'password', 'pharmacy');
    if($conn->connect_error){
        throw new Exception("connection failed:".$conn->connect_error);
    }
    
}
catch (Exception $e){
        die("Error :"$e->getMessage());
    }




// function to fetch data correctly
function fetchData($conn,$sql){
    $result = $conn->query(sql);
    $data =[];
    if($result && $result->num_row >0){
        while($roe = $result->fetch_ossoc()){
            $data[] = $row;
        }
    }
    return $data;
}






if (isset($_POST['Search'])){
    $search = mysqli_real_scape_string($conn, $POST['search']);
    if(!empty($search)){
        $sql = "SELECT * FROM medicine WHERE id = '$search' LIMIT 1";
        $result = mysqli_query($conn, $sql);
    
        if(mysqli_num_row($result) > 0){
            $userData = mysqli_fetch_assoc($result);
            echo "User Found:<br>";
            echo "Name:" . $userData['firstName']. " " . $userData['lastName'] . "<br>";
            echo "gender:" .$userData['gender'] . "<br>";
            echo "email:" . $userData['email'] . "<br>";
            echo "phone:" . $userData['phoneNumber'] . "<br>";
        }else{
            echo "No user found with ID: $search";
        }
    }else{
        echo "Please enter a user ID to search";
    }
}





<?php
$Analgesics = "";
$Antihistamines = "";
$Antibiotics = "";
$Antifungals = "";
$Antivirals = "";
$Gastrointestinal = "";
$Antidepressants = "";
$Antipyretics = "";
$Antiemetics = "";
$Hormonal = "";
$Antiseptics = "";
$err = "";

// Database connection
$host = 'localhost:4306';
$username = 'root';
$password = '';
$dbname = 'pharmacy';
// Create connection
$conn = new mysqli($host, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the 'Add' button is clicked
if (isset($_POST['Add'])) {
    // Retrieve and sanitize input
    $Analgesics = mysqli_real_escape_string($conn, $_POST['Analgesics']);
    $Antihistamines = mysqli_real_escape_string($conn, $_POST['Antihistamines']);
    $Antibiotics = mysqli_real_escape_string($conn, $_POST['Antibiotics']);
    $Antifungals = mysqli_real_escape_string($conn, $_POST['Antifungals']);
    $Antivirals = mysqli_real_escape_string($conn, $_POST['Antivirals']);
    $Gastrointestinal = mysqli_real_escape_string($conn, $_POST['Gastrointestinal']);
    $Antidepressants = mysqli_real_escape_string($conn, $_POST['Antidepressants']);
    $Antipyretics = mysqli_real_escape_string($conn, $_POST['Antipyretics']);
    $Antiemetics = mysqli_real_escape_string($conn, $_POST['Antiemetics']);
    $Hormonal = mysqli_real_escape_string($conn, $_POST['Hormonal']);
    $Antiseptics = mysqli_real_escape_string($conn, $_POST['Antiseptics']);

    // Insert into the drug table
    $insert = "INSERT INTO drug (Analgesics, Antihistamines, Antibiotics, Antifungals, Antivirals, Gastrointestinal, 
                Antidepressants, Antipyretics, Antiemetics, Hormonal, Antiseptics) 
                VALUES ('$Analgesics', '$Antihistamines', '$Antibiotics', '$Antifungals', '$Antivirals', '$Gastrointestinal', 
                        '$Antidepressants', '$Antipyretics', '$Antiemetics', '$Hormonal', '$Antiseptics')";

    // Execute the query and check if the insertion was successful
    if (mysqli_query($conn, $insert)) {
        echo '<div style="height:100px; width:400px;color:green; background:white;border:2px solid; 
                    margin:auto; display:flex; justify-content:center; align-items:center;">
                <h2>Inserted successfully!</h2>
              </div>';
        exit();
    } else {
        $err = "Registration failed: " . mysqli_error($conn);
    }
}
?>








<!DOCTYPE html>
<html>
<head>
    <title>Search User by ID</title>
</head>
<body>
    <form method="POST" action="">
        <label for="id">Enter ID:</label>
        <input type="number" name="id" id="id" required>
        <button type="submit" name="search">Search</button>
    </form>

    <?php
    // Database connection
    $conn = new mysqli('localhost:4306', 'root', '', 'pharmacy');
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    if (isset($_POST['search'])) {
        $id = mysqli_real_escape_string($conn, $_POST['id']);

        $sql = "SELECT * FROM medicine WHERE id = '$id'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);

            echo "<h3>User Details:</h3>";
            echo "First Name: " . htmlspecialchars($row['firstName']) . "<br>";
            echo "Last Name: " . htmlspecialchars($row['lastName']) . "<br>";
            echo "Gender: " . htmlspecialchars($row['gender']) . "<br>";
            echo "Email: " . htmlspecialchars($row['email']) . "<br>";
            echo "Phone Number: " . htmlspecialchars($row['phoneNumber']) . "<br>";
        } else {
            echo "<p style='color:red;'>No user found with ID: $id</p>";
        }
    }
    ?>
</body>
</html>









if (isset($_POST['update'])) {
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $firstName = mysqli_real_escape_string($conn, $_POST['firstName']);
    $lastName = mysqli_real_escape_string($conn, $_POST['lastName']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phoneNumber = mysqli_real_escape_string($conn, $_POST['phoneNumber']);

    $update = "UPDATE medicine 
               SET firstName='$firstName', lastName='$lastName', gender='$gender', email='$email', phoneNumber='$phoneNumber'
               WHERE id='$id'";

    if (mysqli_query($conn, $update)) {
        echo "<p style='color:green;'>Record updated successfully!</p>";
    } else {
        echo "<p style='color:red;'>Update failed: " . mysqli_error($conn) . "</p>";
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











<?php
// Initialize variables
$Analgesics = $Antihistamines = $Antibiotics = $Antifungals = $Antivirals = "";
$Gastrointestinal = $Antidepressants = $Antipyretics = $Antiemetics = $Hormonal = $Antiseptics = "";
$err = "";
$success = "";

// DB connection
$host = 'localhost:4306';
$username = 'root';
$password = '';
$dbname = 'pharmacy';
$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Insert
if (isset($_POST['Add'])) {
    $Analgesics = mysqli_real_escape_string($conn, $_POST['Analgesics']);
    $Antihistamines = mysqli_real_escape_string($conn, $_POST['Antihistamines']);
    $Antibiotics = mysqli_real_escape_string($conn, $_POST['Antibiotics']);
    $Antifungals = mysqli_real_escape_string($conn, $_POST['Antifungals']);
    $Antivirals = mysqli_real_escape_string($conn, $_POST['Antivirals']);
    $Gastrointestinal = mysqli_real_escape_string($conn, $_POST['Gastrointestinal']);
    $Antidepressants = mysqli_real_escape_string($conn, $_POST['Antidepressants']);
    $Antipyretics = mysqli_real_escape_string($conn, $_POST['Antipyretics']);
    $Antiemetics = mysqli_real_escape_string($conn, $_POST['Antiemetics']);
    $Hormonal = mysqli_real_escape_string($conn, $_POST['Hormonal']);
    $Antiseptics = mysqli_real_escape_string($conn, $_POST['Antiseptics']);

    $insert = "INSERT INTO drug (Analgesics, Antihistamines, Antibiotics, Antifungals, Antivirals, 
                Gastrointestinal, Antidepressants, Antipyretics, Antiemetics, Hormonal, Antiseptics) 
                VALUES ('$Analgesics', '$Antihistamines', '$Antibiotics', '$Antifungals', '$Antivirals',
                        '$Gastrointestinal', '$Antidepressants', '$Antipyretics', '$Antiemetics', '$Hormonal', '$Antiseptics')";

    if (mysqli_query($conn, $insert)) {
        $success = "Inserted successfully!";
    } else {
        $err = "Insert failed: " . mysqli_error($conn);
    }
}

// Delete
if (isset($_POST['Delete'])) {
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $delete = "DELETE FROM drug WHERE id = '$id'";
    if (mysqli_query($conn, $delete)) {
        $success = "Deleted successfully!";
    } else {
        $err = "Delete failed: " . mysqli_error($conn);
    }
}

// Update
if (isset($_POST['Update'])) {
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $Analgesics = mysqli_real_escape_string($conn, $_POST['Analgesics']);
    $Antihistamines = mysqli_real_escape_string($conn, $_POST['Antihistamines']);
    $Antibiotics = mysqli_real_escape_string($conn, $_POST['Antibiotics']);
    $Antifungals = mysqli_real_escape_string($conn, $_POST['Antifungals']);
    $Antivirals = mysqli_real_escape_string($conn, $_POST['Antivirals']);
    $Gastrointestinal = mysqli_real_escape_string($conn, $_POST['Gastrointestinal']);
    $Antidepressants = mysqli_real_escape_string($conn, $_POST['Antidepressants']);
    $Antipyretics = mysqli_real_escape_string($conn, $_POST['Antipyretics']);
    $Antiemetics = mysqli_real_escape_string($conn, $_POST['Antiemetics']);
    $Hormonal = mysqli_real_escape_string($conn, $_POST['Hormonal']);
    $Antiseptics = mysqli_real_escape_string($conn, $_POST['Antiseptics']);

    $update = "UPDATE drug SET 
        Analgesics='$Analgesics', Antihistamines='$Antihistamines', Antibiotics='$Antibiotics',
        Antifungals='$Antifungals', Antivirals='$Antivirals', Gastrointestinal='$Gastrointestinal',
        Antidepressants='$Antidepressants', Antipyretics='$Antipyretics', Antiemetics='$Antiemetics',
        Hormonal='$Hormonal', Antiseptics='$Antiseptics' WHERE id='$id'";

    if (mysqli_query($conn, $update)) {
        $success = "Updated successfully!";
    } else {
        $err = "Update failed: " . mysqli_error($conn);
    }
}
?>








if (isset($_POST['search'])) {
    $id = mysqli_real_escape_string($conn, $_POST['id']);

    $sql = "SELECT * FROM medicine WHERE id = '$id'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        // Populate form fields
        $firstName = $row['firstName'];
        $lastName = $row['lastName'];
        $gender = $row['gender'];
        $email = $row['email'];
        $phoneNumber = $row['phoneNumber'];
        $id = $row['id']; // for update and delete
    } else {
        $err = "No user found with ID: $id";
    }
}



<input type="hidden" name="id" value="<?= $id ?>">
<input type="text" class="form-control" id="firstName" name="firstName" value="<?= $firstName ?>" required>
<input type="text" class="form-control" id="lastName" name="lastName" value="<?= $lastName ?>" required>





<input type="radio" name="gender" value="m" <?= $gender == 'm' ? 'checked' : '' ?>> male
<input type="radio" name="gender" value="f" <?= $gender == 'f' ? 'checked' : '' ?>> female
<input type="radio" name="gender" value="o" <?= $gender == 'o' ? 'checked' : '' ?>> other




<!-- Add hidden field for delete -->
<input type="hidden" name="delete_id" value="<?= $id ?>">

<button type="submit" class="btn" name="delete">Delete</button>









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
        $id = $row['id']; // for update and delete
    } else {
        $err = "No user found with ID: $id";
    }
}

<!-- ID hidden field -->
<input type="hidden" name="id" value="<?= htmlspecialchars($id) ?>">

<!-- First name -->
<input type="text" class="form-control" id="firstName" name="firstName" value="<?= htmlspecialchars($firstName) ?>" required>

<!-- Last name -->
<input type="text" class="form-control" id="lastName" name="lastName" value="<?= htmlspecialchars($lastName) ?>" required>

<!-- Gender -->
<label><input type="radio" name="gender" value="m" <?= ($gender == 'm') ? 'checked' : '' ?>> Male</label>
<label><input type="radio" name="gender" value="f" <?= ($gender == 'f') ? 'checked' : '' ?>> Female</label>
<label><input type="radio" name="gender" value="o" <?= ($gender == 'o') ? 'checked' : '' ?>> Other</label>

<!-- Email -->
<input type="email" class="form-control" id="email" name="email" value="<?= htmlspecialchars($email) ?>" required>

<!-- Phone Number -->
<input type="number" class="form-control" id="phoneNumber" name="phoneNumber" value="<?= htmlspecialchars($phoneNumber) ?>" required>

<input type="hidden" name="delete_id" value="<?= htmlspecialchars($id) ?>">
<button type="submit" class="btn" name="delete">Delete</button>
