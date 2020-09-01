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
		<form action="user_update" method="post">
		<span style="color: red;"> $(error)</span>
			<div>
				<label>Id</label>
			 		<input type="text" name = "id" readonly="readonly" value="${user.id}"/> 
			
			</div>
			<div>
				<label>User name</label>
			 		<input type="text" name = "username" value="${user.username}"/>
			<!--
			<input type="text" name="uname"/>
			 the @ModelAttribute annotation should have
			same username name as in User class so
			 -->
			
			</div>
			<div>
				<label>Password</label>
					<input type ="password" name="password" value="${user.password }"/>
			<!--
			<input type="password" name="pass"/>
			similarly with password as well
			-->
			</div>
			<div>
				<label> Mobile Number</label>
				<input type="number" name="mobilenum" value="${user.mobilenum }"/>
			</div>
			<div>
				<label> Email</label>
				<input type="email" name="email" value="${user.email}"/>
			</div>
			<div>
					<label>DOB</label>
						<input type ="date" name="dob" value="${user.dob}"/>
				</div>
				
			<div>
				<label> Gender</label>
				<input type="radio" name="gender" value="Male" ${user.gender=='Male'?'checked':'' }>Male
				<input type="radio" name="gender" value="Female" ${user.gender=='Female'?'checked':'' }>Female
			</div>
			<div>
				<label> Hobbies</label>
				<input type="checkbox" name="hobbies" value="Reading"
				<c:if test="${fn:contains(user.hobbies, 'Reading')}">checked</c:if>
				>Reading
				<input type="checkbox" name="hobbies" value="Playing"
				<c:if test="${fn:contains(user.hobbies, 'Playing')}">checked</c:if>
				>Playing
			</div>
			<div>
				<label> Nationality</label>
				<select name="nationality">
					<option value ="Nepal" ${user.nationality=='Nepal'?'selected':'' }>Nepal</option>				
					<option value ="USA" ${user.nationality=='USA'?'selected':'' }>United States</option>
					<option value ="Italy"${user.nationality=='Italy'?'selected':'' }> Italy</option>				
				</select>
			</div>
			<div>
				<label>Address</label>
					<div>
						<label>City</label>
							<input type ="text" name="address.city" value="${user.address.city}"/>
				</div>
				<div>
					<label>Country</label>
						<input type ="text" name="address.country" value="${user.address.country }"/>
				</div>
			
			</div>
			
			<div>
				<input type="submit" value="Submit"/>
				
			</div>
		</form>
	</div>
</body>
</html>