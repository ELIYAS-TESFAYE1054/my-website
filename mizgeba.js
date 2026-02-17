function passform() {
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
    let email = document.getElementById("email").value;
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
     let birt_hdate = document.getElementById("day").value;
    let confirmPassword = document.getElementById("confirm_password").value;
    let phone_number = document.getElementById("")
    
   

    if (username.length < 4) {
        alert("Username must be at least 4 characters long.");
        return false;
    }

    if (!emailRegex.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    if (password.length < 6) {
        alert("Password must be 6 character.");
        return false;
    }

    if (password !== confirmPassword) {
        alert("incorrect password !!!.");
        return false;
    }
    if()

    return true;
}