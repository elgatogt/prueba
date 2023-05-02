<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'servicio.label', default: 'Servicio')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-servicio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-servicio" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${servicioList}" />
            <div class="table-responsive-sm">
            <table class="table table-hover">
                <thead>
                    <th scope="col">Serie</th>
                    <th scope="col">Tipo</th>
                    <th scope="col">Observaciones</th>
                    <th scope="col">Estado</th>
                </thead>
                <tbody>
                    <g:each in="${servicioList}" >
                        <tr>
                            <td  scope="row"><g:link action="show" id="${it.id}">${it.serie}</g:link></td>                                                        
                            <td>${it.tipo}</td>
                            <td>${it.observaciones}</td>
                            <td>${it.estado}</td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
            </div>

            <div class="pagination">
                <g:paginate total="${servicioCount ?: 0}" />
            </div>
        </div>
    </body>
</html>