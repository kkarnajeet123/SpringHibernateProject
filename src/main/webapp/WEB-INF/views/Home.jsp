<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>This is the home page!!!</h1>
	<label>Please Select your options</label>
	<div>
		<form action = "userCreate" method="post">
		<input type="submit" value="addUser"/>
		</form>
	</div>
	<div>
		<form action="userList">
		<input type="submit" value="showUser"/>
		</form>
	</div>
</body>
</html>