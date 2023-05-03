package com.proyecto.jnet

class Equipo {

    String tipo
    String observaciones
    String serie
    String estado

    static belongsTo = [servicio: Servicio]

    static constraints = {
        tipo inList: ["Litebeam 5AC Gen2","Nanostation 5AC Gen2","Switch 8 puertos","Tubo 6mts","Tubo 3mts","Otro"]
        observaciones nullable:false
        serie nullable:true
        servicio nullable:true
        estado inList: ["En Uso","En bodega", "Dañado"]
    }

    String toString(){
        return tipo + " - " + observaciones + " [" + estado +"]"
    }
}
