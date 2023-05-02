<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'plan.label', default: 'Plan')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-plan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-plan" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.plan}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.plan}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.plan}" method="POST">
                <fieldset class="form">                    
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="nombre">Nombre:</label>
                            <g:textField name="nombre" value="${plan?.nombre}" />                            
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="generarFactura">Precio: </label>
                            <g:textField name="valor" value="${plan?.valor}" />   
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="telefono">Bajada:</label>
                            <g:textField name="bajada" value="${plan?.bajada}" />
                        </div>
                        <div class="col-md-4">
                            <label for="nit">Subida:</label>
                            <g:textField name="subida" value="${plan?.subida}" />
                        </div>
                        <div class="col-md-2">
                            <label for="nit">Activo:</label>
                            <g:checkBox name="activo" value="${plan?.activo}" />                            
                        </div>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
