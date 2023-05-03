package com.proyecto.jnet

import grails.gorm.services.Service

@Service(Equipo)
interface EquipoService {

    Equipo get(Serializable id)

    List<Equipo> list(Map args)

    Long count()

    void delete(Serializable id)

    Equipo save(Equipo equipo)

}