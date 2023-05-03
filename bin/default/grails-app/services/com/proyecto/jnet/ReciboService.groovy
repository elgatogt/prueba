package com.proyecto.jnet

import grails.gorm.services.Service

@Service(Recibo)
interface ReciboService {

    Recibo get(Serializable id)

    List<Recibo> list(Map args)

    Long count()

    void delete(Serializable id)

    Recibo save(Recibo recibo)

}