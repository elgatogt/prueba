package com.proyecto.jnet

class Plan {

    String nombre
    int bajada = 0
    int subida = 0
    double valor = 0
    boolean activo = true

    static hasMany = [servicios: Servicio]

    static constraints = {
        nombre nullable:false, blank: false
        servicios nullable:true
    }

    String toString(){
        return nombre 
    }
}
