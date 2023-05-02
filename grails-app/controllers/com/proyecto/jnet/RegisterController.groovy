package com.proyecto.jnet

import grails.validation.ValidationException
import grails.gorm.transactions.Transactional
import grails.plugin.springsecurity.annotation.Secured
import com.proyecto.jnet.User
import com.proyecto.jnet.Role
import com.proyecto.jnet.UserRole

@Transactional
@Secured('permitAll')
class RegisterController {

    //static allowedMethods = [registrar: "POST"]

    def index() { 
        println "Entra a Index"
    }

    def registrar() {
        println "Si **************************************"
        if(!params.password.equals(params.repassword)) {
            flash.message = "Ambas contraseñas no son la misma"
            redirect action: "index"
            return
        } else {
            try {
                def user = User.findByUsername(params.username)?: new User(username: params.username, password: params.password, fullname: params.fullname).save()
                def role = Role.get(params.role.id)
                if(user && role) {
                    UserRole.create user, role

                    UserRole.withSession {
                      it.flush()
                      it.clear()
                    }

                    flash.message = "Se ha registrado correctamente. Por favor ingrese."
                    redirect controller: "login", action: "auth"
                } else {
                    flash.message = "Register failed"
                    render view: "index"
                    return
                }
            } catch (ValidationException e) {
                flash.message = "Registro fallido"
                redirect action: "index"
                return
            }
        }
    }
}
