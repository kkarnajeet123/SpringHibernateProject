<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String message = (String)request.getAttribute("alertMsg");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
</head>
<body>
	<div>
		<form action="user_save" method="post">
		<span style="color: red;"> $(error)</span>
			<div>
				<label>First Name</label>
			 		<input type="text" name = "firstName"/>
			<!--
			<input type="text" name="uname"/>
			 the @ModelAttribute annotation should have
			same username name as in User class so
			 -->
			
			</div>
			<div>
				<label>LastName</label>
					<input type ="text" name="lastName"/>
			<!--
			<input type="password" name="pass"/>
			similarly with password as well
			-->
			</div>
			<div>
				<label>DOB</label>
				<input type="date" name="dob"/>
			</div>
			<div>
				<label> Email</label>
				<input type="email" name="email"/>
			</div>
			<div>
					<label>Phone Number</label>
						<input type ="number" name="phoneNumber"/>
				</div>
				
			<div>
				<label> Gender</label>
				<input type="radio" name="gender" value="Male">Male
				<input type="radio" name="gender" value="Female">Female
			</div>
			<div>
				<label> Marital Status</label>
				<input type="radio" name="maritalStatus" value="Married">Married
				<input type="radio" name="maritalStatus" value="Single">Single
			</div>
			<div>
				<label> Education</label>
				<select name="education">
					<option value ="PHD">PHD</option>				
					<option value ="Master">Master</option>
					<option value ="Bachelor"> Bachelor</option>				
				</select>
			</div>
			<div>
				<label>Address</label>
					<div>
						<label>City</label>
							<input type ="text" name="address.city"/>
				</div>
				<div>
					<label>Country</label>
						<input type ="text" name="address.country"/>
				</div>
			
			</div>
			
			<div>
				<input type="submit" value="Submit"/>
				
			</div>
		</form>
	</div>
</body>
</html>