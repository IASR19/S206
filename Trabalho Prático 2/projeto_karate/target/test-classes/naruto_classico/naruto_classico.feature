Feature: Testando API de Naruto Clássico

Background: Executa antes de cada teste
    * def url_base = "https://rf-naruto-api.herokuapp.com/api/v1/"

Scenario: Testando se o personagem do id se chama Naruto
    Given url url_base
    And path "/shinobi/624477c10119997961f7f078"
    When method get
    Then status 200
    And match $.id == 624477c10119997961f7f078
    And match $.title == 'Naruto Uzumaki'

Scenario: Verificando se a busca por shinobis retornou um array
    Given url url_base
    And path "/shinobi"
    When method get
    Then status 200
    And match $ == '#[]'

Scenario: Verificando se a quantidade de shinobis está correta
    Given url url_base
    And path "/shinobi/"
    When method get
    Then status 200
    And match $ == '#[12]'

Scenario: Testando o nome do time dentro do array
    Given url url_base
    And path "/shinobi/624478e40119997961f7f07c"
    When method get
    Then status 200
    And match $.heads[624478e40119997961f7f07c].team == 'Team Asuma'

Scenario: Tentando acessar uma página inexistente
    Given url url_base
    And path "/vila"
    When method get
    Then status 500

Scenario: Tentandor obter os dados de um shinobi inexistente
    Given url url_base
    And path "/shinobi/666666666666"
    When method get
    Then status 200
    And match $.id == 666666666666
    And match $.title == 'Boruto Uzumaki'