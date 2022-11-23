Feature: Testando API Pokemon.

Background: Executa antes de cada teste
    * def url_base = 'https://pokeapi.co/api/v2/'

Scenario: Testando retorno .
        Given url 'https://pokeapi.co/api/v2/pokemon/pikachu'
        When method get
        Then status 200

Scenario: Testando retorno people/1/ com informações inválidas.
        Given url 'https://pokeapi.co/api/v2/pokemon/chocolate'
        When method get
        Then status 404
        
Scenario: Testando retorno pikachu e verificando o JSON.
    Given url url_base
    And path '/pokemon/pikachu'
    When method get
    Then status 200
    And match response.name == "pikachu"
    And match response.id == 25


Scenario: Testando retorno pokemon entrando em um dos elementos do array de gênero e testando retorno JSON
    Given url url_base
    And path 'gender/'
    When method get
    Then status 200
    And def genero = $.results[2].url
    And print genero
    And url genero
    When method get
    Then status 200
    And match response.pokemon_species_details[1].pokemon_species.name == "voltorb"
    And match response.id == 3

Scenario: Testando retorno pokemon entrando em um dos elementos do array de evolução e testando retorno JSON
    Given url url_base
    And path 'evolution-chain/'
    When method get
    Then status 200
    And def evolucao = $.results[8].url
    And print evolucao
    And url evolucao
    When method get
    Then status 200
    And match response.chain.evolves_to[0].species.name == "arbok"
    And match response.id == 9
  
