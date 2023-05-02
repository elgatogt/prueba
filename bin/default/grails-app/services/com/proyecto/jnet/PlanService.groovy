package com.proyecto.jnet

import grails.gorm.services.Service

@Service(Plan)
interface PlanService {

    Plan get(Serializable id)

    List<Plan> list(Map args)

    Long count()

    void delete(Serializable id)

    Plan save(Plan plan)

}