<!doctype html>
<html lang="es" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        JNET - Jocotillo
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>
    
    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <a class="navbar-brand" href="/#"><asset:image src="logojnet1.jpg" alt="Grails Logo"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <g:pageProperty name="page.nav"/>
            <sec:ifLoggedIn>
              <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    <sec:loggedInUserInfo field='fullname'/>
                  </a>
                  <div class="dropdown-menu navbar-dark">                                   
                    <a class="dropdown-item" href="/cliente">Clientes</a>
                    <a class="dropdown-item" href="/plan">Planes</a>
                    <a class="dropdown-item" href="/equipo">Equipos</a>
                    <a class="dropdown-item" href="/sector">Sectores</a>
                    <a class="dropdown-item" href="/servicio">Servicios</a>
                    <a class="dropdown-item" href="/recibo">Recibos</a>   
                    <div class="dropdown-divider"></div>
                    <g:form controller="logout">
                      <g:submitButton class="dropdown-item navbar-dark" name="Submit" value="Salir" style="color:white" />
                    </g:form>     
                 </div>                 
                </li>
            </sec:ifLoggedIn>
        </ul>
    </div>

</nav>

<div class="container">
    <g:layoutBody/>
</div>

<div class="footer row" role="contentinfo">
    <div class="col">        
        <strong class="centered"><a href="${createLink(uri: '/')}" target="_blank"><center>&copy; 2023 Sistema de Internet Jocotillo <br>- JNET -</center></a></strong>        
    </div>    
</div>


<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>