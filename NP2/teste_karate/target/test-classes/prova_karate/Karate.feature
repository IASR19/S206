Feature: Fazneodo teste em APIs GoRest e PokéAPI

  Background: Executa antes de cada teste
    * def url_base_pokemon = "https://pokeapi.co/api/v2"
    * def url_base_gorest = "https://gorest.co.in/public/v2"

  Scenario: Criando New User
    Given url url_base_gorest
    And path "users/"
    And request {name:"Test","email": 'itamar_augusto@ges.inatel.br',"gender":"male","status":"active"}
    And header Authorization = 'Bearer ' + "36b3380744936f22c4bcd335936b977e10be3ab44d4d7260e01ce27dd7563e84"
    When method post
    Then status 201

  Scenario: Testando o retorno 'pokemon/pikachu' com o método BackGround
    Given url url_base_pokemon
    And path "pokemon/pikachu"
    When method get
    Then status 200


  Scenario: Testando se o pokémon Squirtle é do tipo água
    Given url url_base_pokemon
    And path "pokemon/squirtle"
    When method get
    Then status 200
    And match response.name == "squirtle"
    And match response.types[*].type.name contains "water"

  Scenario: Testando se o retorno de Chicorita, apresenta o ID correto
    Given url url_base_pokemon
    And path "pokemon-species/152"
    When method get
    Then status 200
    And match response.id == 152
    And match response.habitat.name == "grassland"

  Scenario: Criando elemento com falha utilizando Post.
    Given url url_base_pokemon
    And path 'pokemon/dragonite'
    And request {name: 'voador'}
    When method post
    Then status 404

