package com.proyecto.jnet

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PlanServiceSpec extends Specification {

    PlanService planService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Plan(...).save(flush: true, failOnError: true)
        //new Plan(...).save(flush: true, failOnError: true)
        //Plan plan = new Plan(...).save(flush: true, failOnError: true)
        //new Plan(...).save(flush: true, failOnError: true)
        //new Plan(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //plan.id
    }

    void "test get"() {
        setupData()

        expect:
        planService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Plan> planList = planService.list(max: 2, offset: 2)

        then:
        planList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        planService.count() == 5
    }

    void "test delete"() {
        Long planId = setupData()

        expect:
        planService.count() == 5

        when:
        planService.delete(planId)
        sessionFactory.currentSession.flush()

        then:
        planService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Plan plan = new Plan()
        planService.save(plan)

        then:
        plan.id != null
    }
}
