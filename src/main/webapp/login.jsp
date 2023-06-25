<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<style type="text/css">
  .login {
    width: 300px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    background-color: #f9f9f9;
    font-family: Arial, sans-serif;
    margin-top: 200px;
  }
  
  h1 {
    text-align: center;
  }
  
  form {
    display: flex;
    flex-direction: column;
  }
  
  input[type="text"],
  input[type="password"] {
    margin-bottom: 10px;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
  input[type="submit"] {
    padding: 8px 16px;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  input[type="submit"]:hover {
    background-color: #45a049;
  }
  
  
</style>
		
</head>
<body>
	<div class="login">
	
	<script>
	function validateForm() {
	    var userName = document.getElementById("username").value;
	    var password = document.getElementById("password").value;

	    // Perform validation checks
	    if (userName === "") {
	      alert("Please enter a user name.");
	      return false;
	    }

	    if (password === "") {
	      alert("Please enter a password.");
	      return false;
	    }
	  }
	</script>
	
	<h1>Login Page</h1>
	<form action="log" method="post" onsubmit="validateForm()">
		User Name : <input type="text" name="uid" placeholder="Enter the User Name"> <br><br>
		Password : <input type="password" name="password" placeholder="Enter the Password"> <br><br>
		
		<input type="submit" name="submit" value="Login">
	</form>
	</div>
</body>
</html>