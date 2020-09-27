<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String message = (String) request.getAttribute("alertMsg");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>User Edit Form</title>

<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript"
	src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="resources/css/profile.css">

</head>
<body>
	<div class="container">
		<div class="panel">
			<div class="panel-default">
				<div class="row">
					<div class="col-md-10">
						<div class="col-md-10 jumbotron">
							<form action="user_update" method="post"
								enctype="multipart/form-data">
								<fieldset>
									<legend> Edit and Update</legend>
									<div class="form-group">
										<label>UserId</label> <input type="text" name="userId"
											readonly="readonly" value="${user.userId}"
											class="form-control" />

									</div>

									<div class="form-group">
										<label>First name</label> <input type="text" name="firstName"
											value="${user.firstName}" class="form-control" />
										<!--
								<input type="text" name="uname"/>
								 the @ModelAttribute annotation should have
								same username name as in User class so
								 -->

									</div>
									<div class="form-group">
										<label>Last Name</label> <input type="text" name="lastName"
											value="${user.lastName }" class="form-control" />
										<!--
								<input type="password" name="pass"/>
								similarly with password as well
								-->
									</div>

									<div class="form-group">
										<label>DOB</label> <input type="date" name="dob"
											value="${user.dob}" class="form-control" />

									</div>

									<div class="form-group">
										<label> Email</label> <input type="email" name="email"
											value="${user.email}" class="form-control" />
									</div>

									<div class="form-group">
										<label> Mobile Number</label> <input type="number"
											name="phoneNumber" value="${user.phoneNumber}"
											class="form-control" />
									</div>

									<div class="form-group">
										<label> Gender</label> <input type="radio" name="gender"
											value="Male" ${user.gender=='Male'?'checked':'' }>Male
										<input type="radio" name="gender" value="Female"
											${user.gender=='Female'?'checked':'' }>Female
									</div>

									<div class="form-group">
										<label> Marital Status</label> <input type="radio"
											name="maritalStatus" value="Married"
											${user.maritalStatus=='Married'? 'checked':'' } />Married <input
											type="radio" name="maritalStatus" value="Single"
											${user.maritalStatus=='Single'?'checked':'' } />Single
									</div>

									<div class="form-group">
										<label> Education</label> <select name="education">
											<option value="PHD" ${user.education=='PHD'?'selected':'' }>PHD</option>
											<option value="Master"
												${user.education=='Master'?'selected':'' }>Master</option>
											<option value="Bachelor"
												${user.education=='Bachelor'?'selected':'' }>
												Bachelor</option>
										</select>
									</div>

									<div class="form-group">
										<label> Hobbies</label> <input type="checkbox" name="hobbies"
											value="Reading"
											<c:if test="${fn:contains(user.hobbies, 'Reading')}">checked</c:if>>Reading
										<input type="checkbox" name="hobbies" value="Playing"
											<c:if test="${fn:contains(user.hobbies, 'Playing')}">checked</c:if>>Playing
									</div>

									<div class="form-group">
										<label>Address</label>
										<div>
											<label>City</label> <input type="text" name="address.city"
												value="${user.address.city}" class="form-control" />
										</div>
										<div>
											<label>Country</label> <input type="text"
												name="address.country" value="${user.address.country }"
												class="form-control" />
										</div>

									</div>

									<div class="form-group">
										<label>Username</label> <input type="text" name="userName"
											value="${user.userName}" class="form-control" />
									</div>
									<div class="form-group">
										<label>Password</label> <input type="password" name="password"
											value="${user.password}" class="form-control" />
									</div>

									<div class="form-group">
										<label> User Role</label> <input type="radio" name="role.id"
											value="1" ${user.role.id=='1'?'checked':''} />Admin <input
											type="radio" name="role.id" value="2"
											${user.role.id=='2'?'checked':''} />User

									</div>
									<div>
										<label>Upload Photo</label> <input type="file" name="file"
											class="form-control" />

									</div>

									<div class="form-group">
										<input type="submit" value="Submit" />

									</div>

								</fieldset>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>