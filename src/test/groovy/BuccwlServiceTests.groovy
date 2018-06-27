import org.moqui.Moqui
import org.moqui.context.ExecutionContext
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import spock.lang.Shared
import spock.lang.Specification

class BuccwlServiceTests extends Specification {
    protected final static Logger logger = LoggerFactory.getLogger(BuccwlServiceTests.class)

    @Shared
    ExecutionContext ec

    def setupSpec() {
        // init the framework, get the ec
        ec = Moqui.getExecutionContext()

        //ec.entity.tempSetSequencedIdPrimary("mantle.order.OrderHeader", 95500, 10)

    }

    def cleanupSpec() {
        //ec.entity.tempResetSequencedIdPrimary("mantle.order.OrderHeader")
        //ec.factory.waitWorkerPoolEmpty(50) // up to 5 seconds

        ec.destroy()
    }

    def setup() {
        //ec.user.loginUser("john.doe", "moqui")
        // we still have to disableAuthz even though a user is logged in because this user does not have permission to
        //     call this service directly (normally is called through a screen with inherited permission)
        //ec.artifactExecution.disableAuthz()
        //ec.transaction.begin(null)
    }

    def cleanup() {
       // ec.transaction.commit()
        //ec.artifactExecution.enableAuthz()
       // ec.user.logoutUser()
    }

    def "create sales order"() {
        when:
        logger.info("=======================BuccwlServiceTests===============")
        then:

        0==0
        //cleanup:

    }
}
