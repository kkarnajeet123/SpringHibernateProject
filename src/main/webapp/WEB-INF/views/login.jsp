 <link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/login.css">
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>

<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="resources/js/login.js"></script>
 <div class="container">
        <div class="card card-container">
        
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="login" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="inputEmail" class="form-control" 
                placeholder="Username" required autofocus name="username">
                
                <input type="password" id="inputPassword" class="form-control" 
                placeholder="Password" required name="password">
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
            </form>
            <!-- /form -->
            <a href="forgotpassword" class="forgot-password">
                Forgot the password?
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->
    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>