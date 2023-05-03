package com.proyecto.jnet

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

class SectorController {

    SectorService sectorService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN', 'ROLE_TECNICO', 'ROLE_SECRETARIA'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond sectorService.list(params), model:[sectorCount: sectorService.count()]
    }
    @Secured(['ROLE_ADMIN', 'ROLE_TECNICO', 'ROLE_SECRETARIA'])
    def show(Long id) {
        respond sectorService.get(id)
    }
    @Secured(['ROLE_ADMIN', 'ROLE_SECRETARIA'])
    def create() {
        respond new Sector(params)
    }
    @Secured(['ROLE_ADMIN', 'ROLE_SECRETARIA'])
    def save(Sector sector) {
        if (sector == null) {
            notFound()
            return
        }

        try {
            sectorService.save(sector)
        } catch (ValidationException e) {
            respond sector.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'sector.label', default: 'Sector'), sector.id])
                redirect sector
            }
            '*' { respond sector, [status: CREATED] }
        }
    }
    @Secured(['ROLE_ADMIN', 'ROLE_SECRETARIA'])
    def edit(Long id) {
        respond sectorService.get(id)
    }
    @Secured(['ROLE_ADMIN', 'ROLE_SECRETARIA'])
    def update(Sector sector) {
        if (sector == null) {
            notFound()
            return
        }

        try {
            sectorService.save(sector)
        } catch (ValidationException e) {
            respond sector.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'sector.label', default: 'Sector'), sector.id])
                redirect sector
            }
            '*'{ respond sector, [status: OK] }
        }
    }
    @Secured('ROLE_ADMIN')
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        sectorService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'sector.label', default: 'Sector'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'sector.label', default: 'Sector'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
