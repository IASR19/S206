package aula_inatel.sw;

import com.intuit.karate.junit5.Karate;

class SwRunner {

    @Karate.Test
    Karate testStarWars() {
        return Karate.run("sw").relativeTo(getClass());
    }    

}