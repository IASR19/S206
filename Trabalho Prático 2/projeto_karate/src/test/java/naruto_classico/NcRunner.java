package naruto_classico;

import com.intuit.karate.junit5.Karate;

class NcRunner {
    
    @Karate.Test
    Karate testHp() {
        return Karate.run("naruto_classico").relativeTo(getClass());
    }    

}