<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>



<!-- to print our username in header -->
<security:authentication property="principal" var="u"/>

<style type="text/css">
nav a { color: black; font-size:18px; font-weight: bold;}

</style>

<!-- From here navbar started -->
<nav class="navbar navbar-expand-lg navbar-inverse bg-light">
  <a class="navbar-brand" href="home_page">User Info System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" 
  data-target="#navbarSupportedContent" 
  aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent" >
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home_page">Home <span class="sr-only">(current)</span></a>
      </li>
      <sec:authorize access="hasAnyRole('ROLE_ADMIN',('ROLE_USER')) and isAuthenitcated()">
      <li class="nav-item">
        <a class="nav-link" href="task_list">Task</a>
      </li>
      </sec:authorize>
      <li class="nav-item">
      
      
        <a class="nav-link" href="user_list">User List</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" 
        id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ${u.username}
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="profile">Profile</a>
          <a class="dropdown-item" href="resetpassword">Reset Password</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="logout" >Logout</a>
        </div>
      </li>
     
    </ul>
   
  </div>
</nav>
<!-- till here navbar  -->