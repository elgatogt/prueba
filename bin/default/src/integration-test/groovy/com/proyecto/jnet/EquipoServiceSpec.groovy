package com.proyecto.jnet

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class EquipoServiceSpec extends Specification {

    EquipoService equipoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Equipo(...).save(flush: true, failOnError: true)
        //new Equipo(...).save(flush: true, failOnError: true)
        //Equipo equipo = new Equipo(...).save(flush: true, failOnError: true)
        //new Equipo(...).save(flush: true, failOnError: true)
        //new Equipo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //equipo.id
    }

    void "test get"() {
        setupData()

        expect:
        equipoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Equipo> equipoList = equipoService.list(max: 2, offset: 2)

        then:
        equipoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        equipoService.count() == 5
    }

    void "test delete"() {
        Long equipoId = setupData()

        expect:
        equipoService.count() == 5

        when:
        equipoService.delete(equipoId)
        sessionFactory.currentSession.flush()

        then:
        equipoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Equipo equipo = new Equipo()
        equipoService.save(equipo)

        then:
        equipo.id != null
    }
}
