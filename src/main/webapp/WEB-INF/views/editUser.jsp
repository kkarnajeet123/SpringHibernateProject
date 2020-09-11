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
			<div>
				<label>UserId</label>
			 		<input type="text" name = "userId" readonly="readonly" value="${user.userId}"/> 
			
			</div>
			
			<div>
				<label>First name</label>
			 		<input type="text" name = "firstName" value="${user.firstName}"/>
			<!--
			<input type="text" name="uname"/>
			 the @ModelAttribute annotation should have
			same username name as in User class so
			 -->
			
			</div>
			<div>
				<label>Last Name</label>
					<input type ="text" name="lastName" value="${user.lastName }"/>
			<!--
			<input type="password" name="pass"/>
			similarly with password as well
			-->
			</div>
			
			<div>
			<label>DOB</label>
						<input type ="date" name="dob" value="${user.dob}"/>
			
			</div>
			
			<div>
				<label> Email</label>
				<input type="email" name="email" value="${user.email}"/>
			</div>
			
			<div>
				<label> Mobile Number</label>
				<input type="number" name="phoneNumber" value="${user.phoneNumber }"/>
			</div>
			
			<div>
				<label> Gender</label>
				<input type="radio" name="gender" value="Male" ${user.gender=='Male'?'checked':'' }>Male
				<input type="radio" name="gender" value="Female" ${user.gender=='Female'?'checked':'' }>Female
			</div>
			
			<div>
				<label> Marital Status</label>
				<input type="radio" name="maritalStatus" value="Married"  ${user.maritalStatus=='Married'? 'checked':'' }/>Married
				<input type="radio" name="maritalStatus" value= "Single"  ${user.maritalStatus=='Single'?'checked':'' }/>Single
			</div>
			
			<div>
				<label> Education</label>
				<select name="education">
					<option value ="PHD" ${user.education=='PHD'?'selected':'' }>PHD</option>				
					<option value ="Master" ${user.education=='Master'?'selected':'' }>Master</option>
					<option value ="Bachelor"${user.education=='Bachelor'?'selected':'' }> Bachelor</option>				
				</select>
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
				<label>Username</label>
					<input type ="text" name="user.userName" value="${user.userName }" class="form-control"/>
			</div>
			<div>
				<label>Password</label>
					<input type ="password" name="user.password" value="${user.password }" class="form-control"/>
			</div>
			
			<div>
				<label> User Role</label>
				<input type="radio" name="roleName" value="Admin"  ${role.roleName=='Role_Admin'? 'checked':'' }/>Admin	
				<input type="radio" name="roleName" value= "User"  ${role.roleName=='Role_User'?'checked':'' }/>User
			</div>
			
			
			<div>
				<input type="submit" value="Submit"/>
				
			</div>
			
		</form>
	</div>

</body>
</html>