package com.proyecto.jnet

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SectorServiceSpec extends Specification {

    SectorService sectorService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Sector(...).save(flush: true, failOnError: true)
        //new Sector(...).save(flush: true, failOnError: true)
        //Sector sector = new Sector(...).save(flush: true, failOnError: true)
        //new Sector(...).save(flush: true, failOnError: true)
        //new Sector(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //sector.id
    }

    void "test get"() {
        setupData()

        expect:
        sectorService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Sector> sectorList = sectorService.list(max: 2, offset: 2)

        then:
        sectorList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        sectorService.count() == 5
    }

    void "test delete"() {
        Long sectorId = setupData()

        expect:
        sectorService.count() == 5

        when:
        sectorService.delete(sectorId)
        sessionFactory.currentSession.flush()

        then:
        sectorService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Sector sector = new Sector()
        sectorService.save(sector)

        then:
        sector.id != null
    }
}
