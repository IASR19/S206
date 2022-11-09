# Trabalho de S206 - Qualidade de Software
- Trabalho da disciplina de S206 - LAB. 
- Instituto Nacional de Telecomunicações - Inatel.

## Instalação do ambiente de desenvolvimento:

1. Git Bash (Git for Windows - mais leve)
https://gitforwindows.org/ (APENAS WINDOWS)

2. Nodejs (node):
https://nodejs.org/en/

3. IDE VSCode (code):
https://code.visualstudio.com/
OBS: Pode usar qualquer IDE. Eclipse, InteliJ...fica a seu critério.


## Instalação - Cypress (Teste de UI):
1. Faça a instalação do cypress via linha de comando. Abra o terminal e digite

```
npm install cypress
```

2. Caso não queira utilizar o cypress pelo NPM, pode fazer o download direto do site: https://www.cypress.io/

Link para download direto: https://download.cypress.io/desktop

Basta baixar, extrair, executar o Cypress.exe e apontar para o diretório do projeto desejado na interface do cypress.
Utilize a IDE para editar o código.

### Comandos úteis cypress:

```
Criar o diretório inicial e indicar para o node que o diretório é um projeto
npm init

Baixar as dependencias do projeto (caso já tenha baixado o código do git)
npm install

Abrir cypress pela linha de comando:
./node_modules/.bin/cypress open

Rodar specs por linha de comando:
./node_modules/.bin/cypress run --spec 'cypress/integration/sua_pasta/**/'

Para gerar um report HTML, siga os 3 comandos abaixo:

1. Adicionando as dependências necessárias para gerar o reporte de testes:
npm install --save-dev mochawesome mochawesome-merge mochawesome-report-generator 
	
2. Fazendo merge dos arquivos .json gerados (Após a execução dos testes):
npx mochawesome-merge "cypress/reports/*.json" > mochawesome.json 

3. Gerando o HTML bonito com os reports:
npx marge mochawesome.json 

```

## Documentação Cypress

- https://docs.cypress.io/api/commands/and
