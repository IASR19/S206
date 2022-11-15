package swapi.people;

import com.intuit.karate.junit5.Karate;

class PeopleRunner {
    
    @Karate.Test
    Karate testPeople() {
        return Karate.run(" people").relativeTo(getClass());
    }    

}
