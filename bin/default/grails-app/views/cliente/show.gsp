<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-cliente" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>            
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="nombre">Nombre:</label><b>
                            ${cliente.nombre}</b>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="generarFactura">Se factura: </label><b>
                            <g:formatBoolean boolean="${cliente.generarFactura}" true="Si" false="No se factura" /></b>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="telefono">Tel&eacute;fono:</label><b>
                            ${cliente.telefono}</b>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="nit">Nit: </label><b>
                            ${cliente.nit}</b>
                        </div>
                    </div>
                    <label for="servicios">Servicios</label>
                    <table class="table">                        
                        <thead>
                            <tr>
                                <th>Usuario</th>                                
                            </tr>
                        </thead>
                        <tbody>
                            <g:each in="${cliente.servicios}">
                            <tr>
                                <td>${it?.usuario}</td>
                            </tr>
                            </g:each>
                        </tbody>
                    </table>


            <g:form resource="${this.cliente}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.cliente}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
