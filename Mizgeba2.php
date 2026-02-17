
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
$host = 'localhost';
$username = 'root';
$password = 'tecno@ela';
$dbname = 'pharmacy';
//create connection
$conn = new mysqli('localhost', 'root', 'tecno@ela', 'pharmacy');
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
        $sql = "SELECT * FROM employe WHERE email = '$email' LIMIT 1";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result==1)) {
            $err = "User already exists with this email.";
        } else {
            // Insert into users table
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
            $insert = "INSERT INTO employe (firstName, lastName, gender, password, email,  phoneNumber)
                       VALUES ('$firstName', '$lastName', '$gender', '$hashedPassword', '$email', '$phoneNumber')";
            if (mysqli_query($conn, $insert)) {
                header('Location: home.php');
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

    $sql = "SELECT * FROM employe WHERE id = '$id'";
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

    $delete = "DELETE FROM employe WHERE id = '$deleteId'";

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

    $update = "UPDATE employe 
               SET firstName='$firstName', lastName='$lastName', gender='$gender', email='$email', phoneNumber='$phoneNumber'
               WHERE id='$id'";

    if (mysqli_query($conn, $update)) {
        echo "<p style='color:green;'>Record updated successfully!</p>";
    } else {
        echo "<p style='color:red;'>Update failed: " . mysqli_error($conn) . "</p>";
    }
}

?>

<!DOCTYPE html>
<html>
    <body>
        <html lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <link rel="stylesheet" href="style.css">

    
    <head>
      
        <title>Mizgeba2</title>
        <link rel="stylesheet" href="table of css.css">
    </head>  
        <div class="wrapper">
            <span class="icon-closed" id="close" onclick="closeWindow()"> <ion-icon name="close-outline"></ion-icon></span>
            <div class="form-box Registration">
    <h2 style="color: green;" class="page">Registration page</h2>
    <form action="Mizgeba2.php" method="POST">
                <input class="srch" type="search" name="id" placeholder="tpye to text" >
                 <button class="btn" name="search" for="searchID">Serach</button>
            </form>
    <div class="err">
        <?php echo $err;?>
    </div>
    <form action="Mizgeba2.php" method="POST">
        <div class="Inbox-box">
            <span class="icon"> <ion-icon name="person-add-outline"></ion-icon></span>
            <input type="text" class="form-control" id="firstName" name="firstName" value="<?= htmlspecialchars($firstName) ?>" required>
            <label>first Name</label>
        </div>
        <div class="Inbox-box">
                        <span class="icon"> <ion-icon name="person-add-outline"></ion-icon> </span>
                        <input type="text" class="form-control" id="lastName" name="lastName" value="<?= htmlspecialchars($lastName) ?>" required>
                        <label>last Name</label>
                    </div>
                    <div class="gender">
                        <label for="male" class="radio-inline"><input type="radio" name="gender" value="m" <?= ($gender == 'm') ? 'checked' : '' ?>>male</label>
                        <label for="female" class="radio-inline"><input type="radio" name="gender" value="f" <?= ($gender == 'f') ? 'checked' : '' ?>>female</label>
                        <label for="other" class="radio-inline"><input type="radio" name="gender"  value="o" <?= ($gender == 'o') ? 'checked' : '' ?>>other</label>
                    </div>
        <div class="Inbox-box">
            <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
            <input type="password" class="form-control" id="password" name="password" required>
            <label>Password</label>
        </div>
        <div class="Inbox-box">
            <span class="icon"> <i class="fa-solid fa-envelope"></i> </span>
            <input type="email" class="form-control" id="email" name="email" value="<?= htmlspecialchars($email) ?>" required>
            <label>Email</label>
        </div>
        
        
        <div class="Inbox-box">
            <span class="icon"> <i class="fa-solid fa-phone"></i></span>
            <input type="number" class="form-control" id="phoneNumber" name="phoneNumber" value="<?= htmlspecialchars($phoneNumber) ?>" required>
            <label>phone number</label>
        </div>
        <div class="Remember-forget">
            <label><input type="checkbox">agreed to conditon</label>
            
            <a href="amaric2.php" style="color: green; text-decoration: none;">ለአማርኛ</a>
        </div>
        <button type="submit" class="btn" id="register" onclick="register()" name="Register">Register</button>
<input type="hidden" name="delete_id" value="<?= htmlspecialchars($id) ?>">
<button type="submit" class="btn" name="delete">Delete</button>

       <!-- <button type="reset" class="btn" id="delete"  onclick="delete()" name="delete">Delete</button> -->
<input type="hidden" name="Update_id" value="<?= htmlspecialchars($id) ?>">
<button type="submit" class="btn" name="Update">Update</button>

       <!-- <button type="submit" class="btn" id="update"  onclick="update()" name="update">Update</button> -->
        <div class="Login-register">
            <p>Already have an account <a href="Mizgeba.php" class="Login-link">Login</a></p>
            <span class="icons"><ion-icons name="logo-instagram"></ion-icons>
                <ion-icons name="logo-facebook"></ion-icons>
                <ion-icons name="logo-youtube"></ion-icons>
                </ion-icons></span>
        </div>
    </form>
    <div>
            <a href="Mizgeba.php" class="btn">back</a>
        </div>
</div>

</div>
<!--<script src="bilihat.js"></script>
<script src="script.js"></script>-->
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" 
integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="mizgeba.js"></script>
</body>
</html>
