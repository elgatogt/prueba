<html>
<head>
	<meta name="layout" content="${gspLayout ?: 'main'}"/>
	<title>Registro de Usuarios</title>
</head>

<body>
	<div class="row">
    <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
      <div class="card card-signin my-5">
        <div class="card-body">
          <h5 class="card-title text-center">Registrar Usuario</h5>
					<g:if test='${flash.message}'>
						<div class="alert alert-danger" role="alert">${flash.message}</div>
					</g:if>
		    <form class="form-signin" controller="register" action="registrar" method="POST" id="loginForm" autocomplete="off">
					    <div class="form-group">
					  	<label for="role">Role del Usuario</label>
                            <g:select class="form-control" name="role.id"
		                        from="${com.proyecto.jnet.Role.list()}"
		                        optionKey="id" />
		                </div>

            <div class="form-group">
		  	    <label for="username">Usuario</label>
                <input type="text" placeholder="Usuario" class="form-control" name="username" id="username" autocapitalize="none"/>
            </div>

            <div class="form-group">
				<label for="password">Contrase&ntilde;a</label>
                <input type="password" placeholder="Contraseña" class="form-control" name="password" id="password"/>
            </div>

            <div class="form-group">
			  	<label for="password">Re-escriba Contrase&ntilde;a</label>
                <input type="password" placeholder="Re-escriba Contraseña" class="form-control" name="repassword" id="repassword"/>
            </div>

			<div class="form-group">
			  	<label for="username">Nombre Completo</label>
                <input type="text" placeholder="Nombre Completo" class="form-control" name="fullname" id="fullname" autocapitalize="none"/>
            </div>

            <button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Registrar</button>
            
          </form>
        </div>
      </div>
    </div>
  </div>
	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function(event) {
			document.forms['loginForm'].elements['username'].focus();
		});
	</script>
</body>
</html>