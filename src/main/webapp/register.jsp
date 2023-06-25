<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration</title>
<style type="text/css">
		form {
	    width: 300px;
	    margin: 0 auto;
	    font-family: Arial, sans-serif;
	    border: 1px solid Black;
	    padding: 20px;
	    border-radius: 4px;
	  }
  
	  input[type="text"],
	  input[type="password"] {
	    width: 100%;
	    padding: 10px;
	    margin-bottom: 10px;
	    border: 1px solid #ccc;
	    border-radius: 4px;
	    box-sizing: border-box;
	    margin-top: 5px;
	  }
	  
	  input[type="submit"] {
	    background-color: #4CAF50;
	    color: white;
	    padding: 10px 40px;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	    font-size: 16px;
	    margin-left: 80px;
	  }
	  
	  input[type="submit"]:hover {
    	background-color: #45a049;
  		}
  	  h1{
  		text-align: Center;
  		margin-top: 100px;
  		}
  	  
</style>
</head>
<body>
	<h1>Customer Registration</h1>
	
	<script>
	  function validateForm() {
	    var name = document.getElementById("name").value;
	    var email = document.getElementById("email").value;
	    var phone = document.getElementById("phone").value;
	    var uid = document.getElementById("uid").value;
	    var psw = document.getElementById("psw").value;

	    // Perform validation checks
	    if (name === "") {
	      alert("Please enter a name.");
	      return false;
	    }
	
	    // Email validation
	    var emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,})+$/;
	    if (!emailRegex.test(email)) {
	      alert("Please enter a valid email address.");
	      return false;
	    }
	
	    // Phone validation
	    var phoneRegex = /^\d{10}$/;
	    if (!phoneRegex.test(phone)) {
	      alert("Please enter a 10-digit phone number.");
	      return false;
	    }
	
	    // Password strength validation
	    var strongPasswordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
	    if (!strongPasswordRegex.test(psw)) {
	      alert("Please enter a strong password. It should have at least 8 characters, including one uppercase letter, one lowercase letter, one digit, and one special character.");
	      return false;
	    }
	
	    // If all checks pass, submit the form
	    return true;
  }
</script>
	
	<form action="insert" method="post" onsubmit="return validateForm()">
	  <label for="name">Name :</label>
	  <input type="text" id="name" name="name">
	  <br><br>
	  <label for="email">Email :</label>
	  <input type="text" id="email" name="email">
	  <br><br>
	  <label for="phone">Phone :</label>
	  <input type="text" id="phone" name="phone">
	  <br><br>
	  <label for="uid">User Name :</label>
	  <input type="text" id="uid" name="uid">
	  <br><br>
	  <label for="psw">Password :</label>
	  <input type="password" id="psw" name="psw">
	  <br><br>
	  <input type="submit" name="submit" value="Register">
	</form>

</body>
</html>