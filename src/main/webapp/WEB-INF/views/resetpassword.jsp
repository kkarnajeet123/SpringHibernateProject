<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Reset</title>

<!-- link rel="stylesheet" href="resources/css/style.css" if we are pulling a css from different file -->
<link rel="stylesheet" href="resources/css/profile.css">
<%@ include file="header.jsp"%>

</head>
<body>
	<div class="container">
		<div class="panel">
			<div class="panel-default">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8 jumbotron">
						<form action="update_password" method="post" class="form-horizontal">
							<fieldset>
								<legend> Reset Password </legend>
								<div class="form-group">
									<label>Current Password</label> <input type="password"
										name="currentpassword" class="form-control"/>
								</div>
								<div class="form-group">
									<label>New Password</label> <input type="password"
										name="newpassword"class="form-control" />
								</div>
								<div class="form-group">
									<label>Confirm Password</label> <input type="password"
										name="confirmpassword" class="form-control" />
								</div>
								<div class="form-group col text-center">
									<input type="submit" name="submit" class="btn btn-success" >
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>