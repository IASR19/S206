Feature: Testing SWAPI Films resource.

  Background:
    * url swapiUrl

  Scenario: valid 'films/2'
    Given path 'films/2'
    When method get
    Then status 200
    And match response contains { title:'The Empire Strikes Back' }

  Scenario: valid 'films/3'
    Given path 'films/3'
    When method get
    Then status 200
    And match response contains { title:'Return of the Jedi' }