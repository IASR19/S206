package swapi;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class SwapiTest {

    @Test
    void testParallel() {
        Runner.Builder path = Runner.path("classpath:examples");
        path.tags("~@ignore");
        Results results = path
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
