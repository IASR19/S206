Feature: Testing SWAPI Films resource.

  Background:
    * url swapiUrl

  Scenario: valid 'films/1'
    Given path 'films/1'
    When method get
    Then status 200
    And match response contains { title:'A New Hope' }

  Scenario: valid 'films/2'
    Given path 'films/2'
    When method get
    Then status 200
    And match response contains { title:'The Empire Strikes Back' }