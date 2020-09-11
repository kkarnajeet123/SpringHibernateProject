<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String message = (String)request.getAttribute("alertMsg");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
<!-- link rel="stylesheet" href="resources/css/style.css" if we are pulling a css from different file -->
<%@ include file="header.jsp" %>
</head>
	<body>
		<div class="container">
			<div class="panel">
				<div class="panel-default">
					<div class="row">
						<div class= "col-md-2"></div>
							<div class= "col-md-8 jumbotron">
								<form action="user_save" method="post" class="form-horizontal">
									<fieldset>
										<legend>User Registration From</legend>
								
									<div class="form-group">
										<label>First Name</label> <input type="text" name = "firstName" class="form-control"/>
									<!--
									<input type="text" name="uname"/>
									 the @ModelAttribute annotation should have
									same username name as in User class so
									 -->
									
									</div>
									<div class="form-group">
										<label>LastName</label> <input type ="text" name="lastName"class="form-control"/>
									<!--
									<input type="password" name="pass"/>
									similarly with password as well
									-->
									</div>
									<div class="form-group">
										<label>DOB</label><input type="date" name="dob" class="form-control"/>
									</div>
									<div class="form-group">
										<label> Email</label><input type="email" name="email" class="form-control"/>
									</div>
									<div class="form-group">
										<label>Phone Number</label><input type ="number" name="phoneNumber" class="form-control"/>
										</div>
										
									<div class="form-group">
										<label> Gender</label>
										<input type="radio" name="gender" value="Male" >Male
										<input type="radio" name="gender" value="Female" >Female
									</div>
									<div class="form-group">
										<label> Marital Status</label>
										<input type="radio" name="maritalStatus" value="Married" >Married
										<input type="radio" name="maritalStatus" value="Single" >Single
									</div>
									<div class="form-group">
										<label> Education</label>
										<select name="education" class="form-control">
											<option value ="PHD" class="sp">PHD</option>				
											<option value ="Master" class="sp">Master</option>
											<option value ="Bachelor" class="sp"> Bachelor</option>				
										</select>
									</div>
									<div class="form-group">
										<label>Hobbies</label>
										<input type="checkbox" name ="hobbies" value="reading" >Reading
										<input type="checkbox" name="hobbies" value="playing" >Playing
									</div>
									<div class="form-group">
										<label>Address</label>
											<div>
												<label>City</label>
													<input type ="text" name="address.city" class="form-control"/>
											</div>
											<div>
												<label>Country</label>
												<input type ="text" name="address.country" class="form-control"/>
											</div>
									
									</div>
										
									<div class="form-group">
										<label> UserName</label><input type="text" name="userName" class="form-control"/>
									</div>
									<div class="form-group">
										<label> Password</label><input type="password" name="password" class="form-control"/>
									</div>
										
										<div class="form-group">
											<label> User Role</label>
											<input type="radio" name="roleName" value="Admin" />Admin	
											<input type="radio" name="roleName" value= "User"  />User
										</div>
										
										<div class="form-group">
										
											<input type="submit" value="Submit" class="btn btn-success"/>
										
										</div>
									</fieldset>
								</form>
							</div>
							<div class= "col-md-2"></div>
						</div>
						
					</div>
				</div>
			</div>
		
	</body>
</html>