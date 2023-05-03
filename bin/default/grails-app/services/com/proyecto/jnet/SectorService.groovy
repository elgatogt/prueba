package com.proyecto.jnet

import grails.gorm.services.Service

@Service(Sector)
interface SectorService {

    Sector get(Serializable id)

    List<Sector> list(Map args)

    Long count()

    void delete(Serializable id)

    Sector save(Sector sector)

}