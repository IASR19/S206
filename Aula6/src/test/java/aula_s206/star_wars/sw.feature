Feature: Teste API StarWars

Scenario: Teste retorno people/1
    Given url 'https://swapi.dev/api/people/1/'
    When method get
    Then status 200

Scenario: Teste retorno people/1 inválido
    Given url 'https://swapi.dev/api/people/1/654'
    When method get
    Then status 404

Scenario: Teste retorno planets/1/
    Given url 'https://swapi.dev/api/planets/1/'
    When method get
    Then status 200
    
Scenario: Teste retorno planets inválido
    Given url 'https://swapi.dev/api/planets/99/'
    When method get
    Then status 404
