package prova_karate;

import com.intuit.karate.junit5.Karate;

class KarateRunner {
    
    @Karate.Test
    Karate testAPI() {
        return Karate.run("prova_karate").relativeTo(getClass());
    }    

}