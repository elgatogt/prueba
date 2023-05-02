package com.proyecto.jnet

import grails.gorm.services.Service

@Service(Servicio)
interface ServicioService {

    Servicio get(Serializable id)

    List<Servicio> list(Map args)

    Long count()

    void delete(Serializable id)

    Servicio save(Servicio servicio)

}