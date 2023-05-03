package com.proyecto.jnet

class Recibo {

    String numero
    String mes 
    String anio
    double valor = 0
    Date fecha = new Date()
    String observacion
    String tipoPago
    boolean promesaPago = false
    boolean pagado = false
    User usuarioCobranza

    static belongsTo = [servicio: Servicio]

    static constraints = {
        mes inList: ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
        anio inList : ["2023","2024","2025","2026"]
        tipoPago inList : ["Efectivo","Deposito","Transferencia","Otro"]
        numero nullable:false, blank:false
        observacion nullable:true
        usuarioCobranza nullable:true
    }

    String toString(){
        return "Recibo de " + mes + "/" + anio + " por " + valor
    }

}
