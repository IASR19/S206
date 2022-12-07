// ------------**************************--------------FUNÇÃO---------------*********--------------------

function newClient() {

    let hours = new Date().getHours().toString();
    let minutes = new Date().getMinutes().toString();
    let sec = new Date().getSeconds().toString();
    let nome = hours + ':' + minutes + ':' + sec + 'USER';
    let sobrenome = hours + ':' + minutes + ':' + sec + 'PASS';
    let all = hours + ':' + minutes + ':' + sec;

    cy.get('.form-control').eq(0).type(nome);
    cy.get('.form-control').eq(1).type(sobrenome);
    cy.get('.form-control').eq(2).type(all);
    cy.get('.btn-default').click();
    cy.get('.btn-lg').eq(1).click();
    cy.get('#userSelect').eq(0).select(6);
    cy.get('#currency').select(1);
}

// ------------**************************--------------TESTES---------------*********--------------------

describe('Criando cenário de teste para o site globalsqa', () => {

    it('Cadastrando um novo cliente', () => {
        cy.visit('https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login');
        cy.get('.btn-primary').eq(1).click();
        cy.wait(1000);
        cy.get('.btn-lg').eq(0).click();
        newClient()
        cy.get("button[type=submit]").click();
        cy.get('.btn-lg').eq(2).click();

    })

    it('Testando saque de dinheiro', () => {
        cy.visit('https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login');
        cy.get('.btn-primary').first().click();
        cy.get('#userSelect').select(2);
        cy.get('.btn-default').click();
        cy.get('.btn-lg').eq(2).click();
        cy.get('.form-control').type('200000');
        cy.get('.btn-default').click();
        cy.get('.error').should('contain.text', 'Transaction Failed');
    })

    it('Testando depósito de dinheiro', () => {
        cy.visit('https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login');
        cy.get('.btn-primary').first().click();
        cy.get('#userSelect').select(1);
        cy.get('.btn-default').click();
        cy.get('.btn-lg').eq(1).click();
        cy.get('.form-control').type('50');
        cy.get('.btn-default').click();
        cy.get('.alert').should('contains.text','Success')
    })
});

