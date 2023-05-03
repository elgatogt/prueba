<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'plan.label', default: 'Plan')}" />
        <title>Listado de Planes</title>
    </head>
    <body>
        <a href="#list-plan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-plan" class="content scaffold-list" role="main">
            <h1>Listado de Planes de Internet</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="table-responsive-sm">
            <table class="table table-hover">
                <thead>
                    <th scope="col">Nombre</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Bajada</th>
                    <th scope="col">Subida</th>
                    <th scope="col">Estado</th>
                </thead>
                <tbody>
                    <g:each in="${planList}" >
                        <tr>
                            <td  scope="row"><g:link action="show" id="${it.id}">${it.nombre}</g:link></td>                            
                            <td><g:formatNumber number="${it.valor}" type="currency" locale="es-GT" currencySymbol="Q"/></td>
                            <td>${it.bajada/1024}Mbps</td>
                            <td>${it.subida/1024}Mbps</td>
                            <td><g:formatBoolean boolean="${it.activo}" true="Activo" false="No Activo" /></td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${planCount ?: 0}" />
            </div>
        </div>
    </body>
</html>