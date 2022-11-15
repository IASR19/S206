Feature: Testing SWAPI People resource.

  Background:
    * url swapiUrl

  Scenario: valid 'people/1'
    Given path 'people/1'
    When method get
    Then status 200
    And match response contains { name:'Luke Skywalker' }

  Scenario: valid 'people/2'
    Given path 'people/2'
    When method get
    Then status 200
    And match response contains { name:'C-3PO' }