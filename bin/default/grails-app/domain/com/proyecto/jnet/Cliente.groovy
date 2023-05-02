package com.proyecto.jnet

class Cliente {

    String nombre
    String telefono
    String nit = "Ninguno"
    boolean generarFactura=false

    static hasMany = [servicios: Servicio]

    static constraints = {
        nombre nullable:false
        telefono nullable:false, blank: false        
        servicios nullable:true
    }

    String toString(){
        return nombre + "Tel: " + telefono
    }
    
}
