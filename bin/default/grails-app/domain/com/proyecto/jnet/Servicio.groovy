package com.proyecto.jnet

class Servicio {

    Date fechaInstalacion = new Date()
    Date fechaCancelacion = null
    String usuario
    String clave
    boolean activo = true
    boolean cortecia = false  // Si el servicio se da gratis

    // Instalacion
    String latitud
    String longitud
    String direccion

    static belongsTo = [cliente: Cliente, plan: Plan, sector: Sector]
    static hasMany = [recibos: Recibo, equipos: Equipo]

    static constraints = {
        usuario nullable:true
        clave nullable:true
        latitud nullable:false, blank:false
        longitud nullable:false, blank:false
        direccion nullable:false, blank:false
        fechaCancelacion nullable:true
        recibos nullable:true
        equipos nullable:true
    }
}
