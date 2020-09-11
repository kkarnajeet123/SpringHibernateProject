<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <% String message = (String)request.getAttribute("alertMsg");%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Edit Form</title>
</head>
<body>
	<div>
	<form action ="user_update" method="post">
	<span style = "color: red;" > $(error)</span>
	
		<div>
			<label>Id</label>
			<input type ="text" name="id" readonly="readonly" value ="${user.id }">
		</div>
		<div>
			<label>First Name</label>
			<input type ="text" name="firstname"  value ="${user.firstname }">
		</div>
		<div>
			<label>Last Name</label>
			<input type ="text" name="lastname" value ="${user.lastname}">
		</div>
		<div>
			<label>Email</label>
			<input type ="email" name="email" value ="${user.email}">
		</div>
		<div>
			<label>Phone Number</label>
			<input type ="number" name="phonenumber" value ="${user.phonenumber}">
		</div>
		<div>
			<label>Date of Birth</label>
			<input type ="date" name="dob" value ="${user.dob}">
		</div>
		<div>
			<label>Gender</label>
			<input type ="radio" name="gender" value ="Male" ${user.gender=='Male'?'checked':''}>Male
			<input type="radio" name="gender" value="Female" ${user.gender=='Female'?'checked':'' }>Female
		</div>
		<div>
			<label>Marital Status</label>
			<input type ="radio" name="maritalStatus" value ="Married"${user.maritalStatus=='Married'?'checked':''}>Married
			<input type ="radio" name="maritalStatus" value ="Single" ${user.maritalStatus=='Single'?'checked':'' }>Single
		</div>
		<div>
			<label>Education</label>
			<select name="education" }>
				<option value="PHD" ${user.education=='PHD'? 'selected' :''}>PHD </option>
				<option value="Master" ${user.education=='Master'?'selected':''}>Master</option>
				<option value="Bachelor" ${user.education=='Bachelor'?'selected':'' }>Bachelor</option>
			
			</select>
		</div>
		<div>
			<label>Address</label>
				<div>
					<label>City</label>
					<input type="text" name="address.city" value="${user.address.city}">
				</div>
				<div>
					<label>Country</label>
					<input type="text" name="address.country" value="${user.address.country}">
				</div>
		</div>
		<div>
			<input type="submit" value="Submit"/>
		</div>
		
		
	
	</form>
	
	</div>
	
</body>
</html>