<!-- <?php
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

?> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    
    <title>Pharmacy</title>
</head>
<body>
<link rel="stylesheet" href="home.css">
<img src="./IMG_20250814_220624_892.JPG" alt="kiya" class="logo">
<h2 style="background-color: green; color: white; text-align: center;" class="upper">
        <span class="mehsashal"> BILIHAT </span>
        <br> 
        Online Pharmacy </h2>
        <!--<input class="srch" type="search" name="" placeholder="tpye to text" >
                    <a href="#"><button class="find">Serach</button></a>-->
                    
<nav class="navigation">  
                 <a href="Mizgeba.php">Login</a>
                 
                 <a href="prescription.php"> Prescription</a>
                 <a href="medicine.php">Medicine</a>
                 <a href="">Payment </a>
                <a href="service.php">Service</a>
                <a href="contact.php">Contact us</a>
                <a href="about.php">About us</a> 
                <a href="way.php">flow</a> 
                <!--<a href="javascript:void(0);" style="font-size: 15px;" class="js" onclick="myfunction()">&#9776;</a>   -->
            </nav> <br>
            
        <button class="bilihat" style="white-space: pre;">BILIHAT ONLINE PHARMACY</button>
        <br>
        
         <br><br><br>
         </h3>
        <img src="./images (9).JPEG" alt="" class="pic">
        <img src="./image.jpeg" alt="" class="pic">
        <img src="./doc.png" alt="" class="pic">
        <img src="./images (6).JPEG" alt="" class="pic">
        <img src="./images (10).JPEG" alt="" class="pic">
        <img src="./res.JPG" alt="" class="pic">
        <img src="./download (6).JPEG" alt="" class="pic">
        <img src="./download (7).JPEG" alt="" class="pic">
        <ul style="color: green; margin-left: 3%; font-size: large; font-weight: lighter;">
            <!--list-style-type: square;      style="list-style-type: square;"-->
            <li>
                A Doctor gives life to the patient through medicine.
            </li><br>
            <li>
                A Pharmasist gives life to Medicines through his knowledge and skill. 
            </li>
            
        </ul>
    
        
        
          
        <script src="script.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
       
</body>
 <marquee behavior="5s" direction="left" class="mar" style="background: green;">A Doctor gives life to the patient through medicine. 
             A Pharmasist gives life to Medicines through his knowledge and skill.
             "Bilihat" pharmacy is open all day for 24 hours.
        </marquee>
</html>