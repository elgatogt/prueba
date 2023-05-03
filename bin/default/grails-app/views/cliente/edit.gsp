<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-cliente" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.cliente}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.cliente}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.cliente}" method="PUT">
                <g:hiddenField name="version" value="${this.cliente?.version}" />
                <fieldset class="form">
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="nombre">Nombre:</label>
                            <g:textField name="nombre" value="${cliente?.nombre}" />                            
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="generarFactura">Se factura: </label>
                            <g:checkBox name="generarFactura" value="${cliente.generarFactura}" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="telefono">Tel&eacute;fono:</label>
                            <g:textField name="telefono" value="${cliente?.telefono}" />
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="nit">Nit: </label>
                            <g:textField name="nit" value="${cliente?.nit}" />
                        </div>
                    </div>

                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
