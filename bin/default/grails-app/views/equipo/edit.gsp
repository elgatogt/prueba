<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'equipo.label', default: 'Equipo')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-equipo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-equipo" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.equipo}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.equipo}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.equipo}" method="PUT">
                <g:hiddenField name="version" value="${this.equipo?.version}" />
                <fieldset class="form">
                    
                    <fieldset class="form">
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="serie">Serie:</label>
                            <g:textField name="serie" value="${equipo?.serie}" />
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="observaciones" >Observaciones:</label>                            
                            <g:textField name="observaciones" value="${equipo?.observaciones}" />
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="tipo">Tipo:</label>
                            <g:select name="equipo.tipo" 
                                    from="${['Litebeam 5AC Gen2','Nanostation 5AC Gen2','Switch 8 puertos','Tubo 6mts','Tubo 3mts','Otro']}" 
                                    value="${equipo?.tipo}" />                            
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="estado">Estado:</label>
                            <g:select name="equipo.estado" 
                                    from="${['En Uso','En bodega','Dañado']}" 
                                    value="${equipo?.estado}" /> 
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
