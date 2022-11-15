package swapi.films;

import com.intuit.karate.junit5.Karate;

public class FilmsRunner {

    @Karate.Test
    Karate testFilms() {
        return Karate.run(" films").relativeTo(getClass());
    }

}