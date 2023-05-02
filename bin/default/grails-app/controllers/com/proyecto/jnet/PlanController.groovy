package com.proyecto.jnet

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

class PlanController {

    PlanService planService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN', 'ROLE_TECNICO', 'ROLE_SECRETARIA'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond planService.list(params), model:[planCount: planService.count()]
    }
    @Secured(['ROLE_ADMIN', 'ROLE_TECNICO', 'ROLE_SECRETARIA'])
    def show(Long id) {
        respond planService.get(id)
    }
    @Secured('ROLE_ADMIN')
    def create() {
        respond new Plan(params)
    }
    @Secured('ROLE_ADMIN')
    def save(Plan plan) {
        if (plan == null) {
            notFound()
            return
        }

        try {
            planService.save(plan)
        } catch (ValidationException e) {
            respond plan.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'plan.label', default: 'Plan'), plan.id])
                redirect plan
            }
            '*' { respond plan, [status: CREATED] }
        }
    }
    @Secured('ROLE_ADMIN')
    def edit(Long id) {
        respond planService.get(id)
    }
    @Secured('ROLE_ADMIN')
    def update(Plan plan) {
        if (plan == null) {
            notFound()
            return
        }

        try {
            planService.save(plan)
        } catch (ValidationException e) {
            respond plan.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'plan.label', default: 'Plan'), plan.id])
                redirect plan
            }
            '*'{ respond plan, [status: OK] }
        }
    }
    @Secured('ROLE_ADMIN')
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        planService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'plan.label', default: 'Plan'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'plan.label', default: 'Plan'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
