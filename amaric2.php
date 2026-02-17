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
$host = 'localhost:4306';
$username = 'root';
$password = '';
$dbname = 'pharmacy';
//create connection
$conn = new mysqli('localhost:4306', 'root', '', 'pharmacy');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error());}
    
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
        <title>amaric2</title>
        <link rel="stylesheet" href="table of css.css">
    </head>
    <a href=""></a>
    
        <header>
            
            <input class="srch" type="search" name="" placeholder="የሚፈልጉትን ያስገቡ" >
          <button class="btn">ፈልግ</button>
        </header>
          
        <div class="wrapper">
            <span class="icon-closed"> <ion-icon name="close-outline"></ion-icon></span>
            
            <div class="form-box Registration">
    <h2 style="color: green;" class="page">መመዝገብያ ገፅ</h2>
    <form action="amaric2.php" method="POST">
        <div class="Inbox-box">
            <span class="icon"> <ion-icon name="person-add-outline"></ion-icon></span>
            <input type="text" required>
            <label>የተጠቃሚ ስም</label>

        </div>
        <div class="input-box">
            <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
            <input type="password">
            <label>የይለፍ ቃል</label>
        </div>
        <div class="Inbox-box">
            <span class="icon"> <ion-ico name="gstfdugsfxudfud"></ion-ico> </span>
            <input type="phone-number">
            <label>የስልክ ቁጥር</label>
        </div>
        <div class="Inbox-box">
            <span class="icon"> <ion-ico name="gstfdugsfxudfud"></ion-ico> </span>
            <input type="email">
            <label>ኢሜይል ያስገቡ</label>
        </div>
       <div class="gender">
                        <label for="male" class="radio-inline"><input type="radio" name="gender" value="m" id="male" required>ወንድ</label>
                        <label for="female" class="radio-inline"><input type="radio" name="gender" value="f" id="female" required>ሴት</label>
                        <label for="other" class="radio-inline"><input type="radio" name="gender" value="o" id="other" required>ሌላ</label>
                    </div>
        <div class="Inbox-box">
            <span class="icon"> <ion-ico name="gstfdugsfxudfud"></ion-ico> </span>
            <input type="password">
            <label>የይለፍ ቃል ያረጋግጡ</label>
        </div>
        
        <div class="Remember-forget">
            <label><input type="checkbox">በህጉ እስማማለው</label>
            <a href="#" >የይለፍ ቃል ረስቻለው</a>
            <a href="Mizgeba2.php" style="color:green; text-decoration: none;" >to english</a>
        </div>
        
        <button type="submit" class="btn">ተመዝገብ</button>
        <button type="submit" class="btn">አጥፋ</button>
        <button type="submit" class="btn">አሻሽል</button>
        <div class="Login-register">
            <p>ከዝህ በፍት አካውንት አለኝ   <a href="#" class="Login-link">    ተመዝገብ</a></p>
            <span class="icons"><ion-icons name="logo-instagram"></ion-icons>
                <ion-icons name="logo-facebook"></ion-icons>
                <ion-icons name="logo-youtube"></ion-icons>
                </ion-icons></span>


        </div>
    </form>
    <div>
            <a href="home.php" class="btn">ተመለስ</a>
        </div>
</div>

</div>
<script src="script.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
