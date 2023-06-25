<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<style type="text/css">
  .details {
    margin: 20px;
    padding: 20px 595px;
    border: 1px solid #ccc;
    border-radius: 4px;
    background-color: #f9f9f9;
    font-family: Arial, sans-serif;
  }
  
  table {
    width: 100%;
    border-collapse: collapse;
  }
  
  h1 {
    margin-top: 0;
    margin-bottom: 20px;
    text-align: Center;
  }
  
  td {
    padding: 10px;
  }
  
  a {
    text-decoration: none;
  }
  
  input[type="button"] {
    display: inline-block;
    padding: 8px 16px;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    background-color: #4CAF50;
    color: White;
    border-radius: 4px;
    cursor: pointer;
    border-width: 0px;
  }
  
  .delete input[type="button"] {
  	display: inline-block;
    padding: 8px 16px;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    background-color: #800000;
    color: White;
    border-radius: 4px;
    cursor: pointer;
    border-width: 0px;
  }
  
  .button:hover {
    background-color: #800000;
  }
</style>
		
</head>
<body>
	<div class="details">
	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<h1>User Details</h1>
	
	<tr>
		<td>Customer ID : ${cus.id}</td>
	</tr>
	
	<tr>
		<td>Customer Name : ${cus.name}</td>
	</tr>
	
	<tr>
		<td>Customer Email : ${cus.email}</td>
	</tr>
	
	<tr>
		<td>Customer Phone : ${cus.phone}</td>
	</tr>
	
	<tr>
		<td>Customer User Name : ${cus.userName}</td>
	</tr>
	
	<tr>
		<td>Customer Password : ${cus.password}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<c:url value="updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	
	<br>
	<center>
	
	<a href="${cusupdate}">
	<input type="button" name="update" value="Update User Data">
	</a>
	
	<br><br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	
	<div class="delete">
	<a href="${cusdelete}">
	<input type="button" name="delete" value="Delete Account">
	</a>
	</div>
	
	</center>
	</div>
</body>
</html>