<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<div>
<a href ="user_form">Add User</a>
</div>
<body>
	<c:if test="${!empty users }">
<!-- in jsp we can write 3 kinds of java codes 
1. using scriplet < % %>
2. declaration !
3. expression =
but java convention do not prefer writing these kind of codes
-->
	<div>
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>DOB</th>
					<th>Email Address</th>
					<th>Phone Number</th>
					<th>Gender</th>
					<th>Marital Status</th>
					<th>Education</th>
					<th>Address</th>
					<th>Action</th>
					
			
				</tr>
			</thead>
		<tbody>
			<c:forEach items ="${users}" var="user">
			<tr>
				<td> ${user.userId }</td>
				<td> ${user.firstName }</td>
				<td> ${user.lastName }</td>
				<td> ${user.dob}</td>
				<td> ${user.email}</td>
				<td> ${user.phoneNumber }</td>
				<td> ${user.gender }</td>
				<td> ${user.maritalStatus }</td>
				<td> ${user.education }</td>
				<td> ${address.city}, ${address.country}</td>
				<td> <a href ="user_edit?id=${user.userId}">Edit</a>
					 <a href ="user_delete?id=${user.userId}">Delete</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
</c:if>
</body>
</html>