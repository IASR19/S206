## Prova Pratica - S206 - 2|2022
> Repositório para a entrega da prova prática de S206

# Para executar o teste_karate e obter o relatório de testes:

> mvn test –Dtest=KarateRunner

# Para executar o teste_cypresss, basta rodar o comando dentro da pasta NP2:

> ./node_modules/.bin/cypress open

# Para executar o teste_cypresss e emitir o relatório em html, rodar o comando:

> ./node_modules/.bin/cypress run --spec 'cypress/e2e/**/'

## OBS:
# Gerar Relatorio em Mochawesome
> ./node_modules/.bin/cypress run --spec ./cypress/integration/pasta/spec.spec.js --reporter mochawesome