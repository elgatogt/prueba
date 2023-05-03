<html>
<head>
	<meta name="layout" content="${gspLayout ?: 'main'}"/>
	<title>Ingreso al Sistema [JNET]</title>
</head>

<body>
	<div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Ingreso al Sistema</h5>
			<g:if test='${flash.message}'>
				<div class="alert alert-danger" role="alert">${flash.message}</div>
			</g:if>
            <form class="form-signin" action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" autocomplete="off">
              <div class="form-group">
			  	<label for="username">Usuario</label>
                <input type="text" class="form-control" name="${usernameParameter ?: 'username'}" id="username" autocapitalize="none"/>
              </div>

              <div class="form-group">
			  	<label for="password">Contrase&ntilde;a</label>
                <input type="password" class="form-control" name="${passwordParameter ?: 'password'}" id="password"/>
				<i id="passwordToggler" title="toggle password display" onclick="passwordDisplayToggle()">&#128065;</i>
              </div>

              <div class="form-group form-check">
			  	<label class="form-check-label">
			  		<input type="checkbox" class="form-check-input" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/> Remember me
				</label>
			  </div>
              <button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Ingresar</button>
              <hr class="my-4">
              <p>Don't have an account? <g:link controller="register">Register</g:link></p>
            </form>
          </div>
        </div>
      </div>
    </div>
	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function(event) {
			document.forms['loginForm'].elements['username'].focus();
		});
		function passwordDisplayToggle() {
			var toggleEl = document.getElementById("passwordToggler");
			var eyeIcon = '\u{1F441}';
			var xIcon = '\u{2715}';
			var passEl = document.getElementById("password");
			if (passEl.type === "password") {
				toggleEl.innerHTML = xIcon;
				passEl.type = "text";
			} else {
				toggleEl.innerHTML = eyeIcon;
				passEl.type = "password";
			}
		}
	</script>
</body>
</html>