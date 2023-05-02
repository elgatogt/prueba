package com.proyecto.jnet

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ServicioServiceSpec extends Specification {

    ServicioService servicioService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Servicio(...).save(flush: true, failOnError: true)
        //new Servicio(...).save(flush: true, failOnError: true)
        //Servicio servicio = new Servicio(...).save(flush: true, failOnError: true)
        //new Servicio(...).save(flush: true, failOnError: true)
        //new Servicio(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //servicio.id
    }

    void "test get"() {
        setupData()

        expect:
        servicioService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Servicio> servicioList = servicioService.list(max: 2, offset: 2)

        then:
        servicioList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        servicioService.count() == 5
    }

    void "test delete"() {
        Long servicioId = setupData()

        expect:
        servicioService.count() == 5

        when:
        servicioService.delete(servicioId)
        sessionFactory.currentSession.flush()

        then:
        servicioService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Servicio servicio = new Servicio()
        servicioService.save(servicio)

        then:
        servicio.id != null
    }
}
