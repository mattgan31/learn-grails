package learn.grails

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class RegistrationControllerSpec extends Specification implements ControllerUnitTest<RegistrationController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
