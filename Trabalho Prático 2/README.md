## Trabalho Prático S206 [L1] - Testes de API com Karate
## Link da api testada: https://rf-naruto-api.herokuapp.com

# Descrição do projeto:

6 testes foram utilizados visando buscar informações sobre omund de naruto classico.

> Requisitar informações do ID  624477c10119997961f7f078 e verificar nome;

> Requisitar todos os personagens e ver se é array;

> Verificando se a quantidade de shinobis está correta

> Testando o nome do time dentro do array

> Tentando acessar uma página inexistente

> Tentandor obter os dados de um shinobi inexistente


## Executando o projeto:

Siga os seguintes passos para executar o projeto:

1. Clone esse repositório na sua máquina.

2. Baixe e configure o Maven por meio do link: https://maven.apache.org/

3. Na pasta que contém o arquivo "pom.xml" execute o seguinte comando por meio do terminal:

```
mvn clean install
```

4. Para executar os testes via terminal utilize o comando:

```
mvn test –Dtest=NpRunner
```

Relatório HTML com os resultados dos testes: HTML contendo os resultados é gerado automaticamente ao final da execução dos testes. Basta abrir o link mostrado no terminal no navegador para visualizá-lo.


## ----------------------------------------------------------------------------------------------

## Q2:

1. 1 suite -> naruto_classico.feature;
2. Automatizados
3. São de Integração ou de Serviço;
4. São funcionais;
5. Sim;
6. Executar e verificar os resultados > Fazer alguma atualização na API > Realizar os testes novamente e verificar se os resultados estão ok.
