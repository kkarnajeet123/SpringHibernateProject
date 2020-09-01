<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Info</title>
</head>
<div>
<a href ="user_form">Add User</a>
</div>
<body>
	<c:if test ="${!empty users}">
	<div>
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email Address</th>
					<th>Phone Number</th>
					<th>Date of Birth</th>
					<th>Gender</th>
					<th>Marital Status</th>
					<th>Education</th>
					<th>Address</th>
					<th>Action </th>
					
					</tr>
				
			</thead>
				<c:forEach items= "${users}" var="user">
					<tr>
				
						<td>${user.id }</td>
						<td>${user.firstName }</td>
						<td>${user.lastname }</td>
						<td>${user.email}</td>
						<td>${user.phonenumber}</td>
						<td>${user.dob}</td>
						<td>${user.gender}</td>
						<td>${user.maritalStatus}</td>
						<td>${user.education} </td>
						<td>${user.address.city }, ${user.address.country}</td>
						<td> <a href="user_edit? id=${user.id}">Edit</a>
						<td> <a href="user_delete? id=${user.id}">Delete</a> }
					
					</tr>			
					
				</c:forEach>
				
		</table>
	
	
	</div>
</c:if>
</body>
</html>