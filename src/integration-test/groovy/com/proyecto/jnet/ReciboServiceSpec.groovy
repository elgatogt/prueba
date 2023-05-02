package com.proyecto.jnet

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ReciboServiceSpec extends Specification {

    ReciboService reciboService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Recibo(...).save(flush: true, failOnError: true)
        //new Recibo(...).save(flush: true, failOnError: true)
        //Recibo recibo = new Recibo(...).save(flush: true, failOnError: true)
        //new Recibo(...).save(flush: true, failOnError: true)
        //new Recibo(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //recibo.id
    }

    void "test get"() {
        setupData()

        expect:
        reciboService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Recibo> reciboList = reciboService.list(max: 2, offset: 2)

        then:
        reciboList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        reciboService.count() == 5
    }

    void "test delete"() {
        Long reciboId = setupData()

        expect:
        reciboService.count() == 5

        when:
        reciboService.delete(reciboId)
        sessionFactory.currentSession.flush()

        then:
        reciboService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Recibo recibo = new Recibo()
        reciboService.save(recibo)

        then:
        recibo.id != null
    }
}
