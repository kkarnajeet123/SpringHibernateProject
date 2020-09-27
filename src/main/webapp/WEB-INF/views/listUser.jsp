<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link rel="stylesheet" href="resources/css/profile.css">
<%@ include file="header.jsp"%>
<style type="text/css">
table thead th {
	color: white;
	font-size: 15px;
	font-weight: bold;
}

table tbody td {
	color: white;
	font-size: 15px
}
</style>
<link>
</head>

<body>


	<c:if test="${!empty users }">
		<!-- in jsp we can write 3 kinds of java codes 
1. using scriplet < % %>
2. declaration !
3. expression =
but java convention do not prefer writing these kind of codes
-->
		<div>
			<table class="table">
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
						<th>Hobbies</th>
						<th>Address</th>
						<th>User Name</th>
						<th>Password</th>
						<th>Role</th>
						<th>Pictures</th>
						<th>Action</th>


					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.userId}</td>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.dob}</td>
							<td>${user.email}</td>
							<td>${user.phoneNumber}</td>
							<td>${user.gender}</td>
							<td>${user.maritalStatus}</td>
							<td>${user.education}</td>
							<td>${user.hobbies}</td>
							<td>${user.address.city}, ${user.address.country}</td>
							<td>${user.userName}</td>
							<td>${user.password}</td>
							<td>${user.role.roleName}</td>
							<td><img alt="profile pic"
								src="image_display?id=${user.userId}" width="50px" height="50px"></td>
							<security:authorize
								access="hasRole ('ROLE_ADMIN') and isAuthenticated()">
								<td><a href="user_edit?id=${user.userId}"
									class="btn btn-primary">Edit</a> <a
									href="user_delete?id=${user.userId}" class="btn btn-danger">Delete</a>

								</td>
							</security:authorize>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:if>
</body>

<security:authorize
	access="hasRole ('ROLE_ADMIN') and isAuthenticated()">
	<div>
		<a href="user_form" class="btn btn-success">Add User</a>

	</div>
</security:authorize>

</html>