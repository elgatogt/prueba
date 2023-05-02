package com.proyecto.jnet

class Sector {

    String nombre

    static hasMany = [servicios: Servicio]

    static constraints = {
        nombre nullable:false, blank:false
        servicios nullable:true
    }

    String toString(){
        return nombre
    }
}
