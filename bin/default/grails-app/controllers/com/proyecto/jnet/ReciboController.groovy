package com.proyecto.jnet

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

class ReciboController {

    ReciboService reciboService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond reciboService.list(params), model:[reciboCount: reciboService.count()]
    }

    def show(Long id) {
        respond reciboService.get(id)
    }

    def create() {
        respond new Recibo(params)
    }

    def save(Recibo recibo) {
        if (recibo == null) {
            notFound()
            return
        }

        try {
            reciboService.save(recibo)
        } catch (ValidationException e) {
            respond recibo.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recibo.label', default: 'Recibo'), recibo.id])
                redirect recibo
            }
            '*' { respond recibo, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond reciboService.get(id)
    }

    def update(Recibo recibo) {
        if (recibo == null) {
            notFound()
            return
        }

        try {
            reciboService.save(recibo)
        } catch (ValidationException e) {
            respond recibo.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'recibo.label', default: 'Recibo'), recibo.id])
                redirect recibo
            }
            '*'{ respond recibo, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        reciboService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'recibo.label', default: 'Recibo'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recibo.label', default: 'Recibo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
