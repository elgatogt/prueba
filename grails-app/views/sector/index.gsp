<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'sector.label', default: 'Sector')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-sector" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-sector" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>            
            <div class="table-responsive-sm">
            <table class="table table-hover">
                <thead>
                    <th scope="col">Nombre</th>                    
                </thead>
                <tbody>
                    <g:each in="${sectorList}" >
                        <tr>
                            <td  scope="row"><g:link action="show" id="${it.id}">${it.nombre}</g:link></td>                                                                                    
                        </tr>
                    </g:each>
                </tbody>
            </table>
            </div>
            <div class="pagination">
                <g:paginate total="${sectorCount ?: 0}" />
            </div>
        </div>
    </body>
</html>