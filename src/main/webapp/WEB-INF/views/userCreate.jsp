<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="user_save" method="post">  
			<div>
				<label> First Name </label>
				<input type="text" name ="firstname"/>
			</div>
			<div>
				<label> Last Name </label>
				<input type="text" name ="lastname"/>
			</div>
			<div>
				<label> Email Address </label>
				<input type="email" name ="email"/>
			</div>
			<div>
				<label> Phone Number </label>
				<input type="number" name ="phonenumber"/>
			</div>
			<div>
				<label> Gender </label>
				<input type="radio" name ="gender" value="Male">Male
				<input type="radio" name="gender" value="Female">Female
			</div>
			<div>
				<label> Marital Status </label>
				<input type="radio" name ="maritalStatus" value="Single">Single
				<input type="radio" name= "naritalStatus" value="Married">Married
			</div>
			<div>
				<label> Education</label>
				<input type="text" name="education"/>
			</div>
			<label>Address</label>
					<div>
						<label>City</label>
							<input type ="text" name="address.city"/>
				</div>
				<div>
					<label>Country</label>
						<input type ="text" name="address.country"/>
				</div>
		
			<div>
			<label> Submit </label>
			<input type="submit" name="Submit"/>
			</div>
		
	
	</form>
	</div>


</body>
</html>