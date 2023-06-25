<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Customer Data</title>
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

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>

	<h1>Update Customer Data</h1>
	
	<form action="update" method="post">
	  <label for="id">Customer ID :</label>
	  <input type="text" id="id" name="id" value="<%= id %>" readonly>
	  <br><br>
	  <label for="name">Name :</label>
	  <input type="text" id="name" name="name" value="<%= name %>">
	  <br><br>
	  <label for="email">Email :</label>
	  <input type="text" id="email" name="email" value="<%= email %>">
	  <br><br>
	  <label for="phone">Phone :</label>
	  <input type="text" id="phone" name="phone" value="<%= phone%>">
	  <br><br>
	  <label for="uid">User Name :</label>
	  <input type="text" id="uid" name="uid" value="<%= username%>">
	  <br><br>
	  <label for="psw">Password :</label>
	  <input type="password" id="psw" name="psw" value="<%= password %>">
	  <br><br>
	  <input type="submit" name="submit" value="Update">
	</form>
</body>
</html>