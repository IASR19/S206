
describe('Encontrar Apple no Google', () => {
    it('Pesquisar apple', () => {
        cy.visit("https://google.com.br");
        cy.get("input[name=q]").type("Apple {enter}")
    })
})

describe('Entrar site da Apple Brasil', () => {
    it('Abrir Site da Apple', () => {
        //cy.contains('Apple (Brasil)').click() //bloqueado pelo google (mas funcionou)
        cy.visit("https://apple.com/br");
    })
    it('Scroll', () => {
        cy.wait(2000) // esperar 2 segundos
        cy.scrollTo(0, 1700) // rolagem 1700 px
    })
})

describe('Entrar e sair da Conferência Mundial da Apple', () => {
    it('Clicar no evento WWDC22', () => {  
        cy.get('*[class^="unit-wrapper theme-dark bottom-copy-wrapper"]').click()
        cy.wait(8000) // esperar 8 segundos
        cy.scrollTo(0, 1700)// rolagem 1700 px
    })
    it('Entrar no desafio para estudantes', () => {  
        
        cy.contains('Swift Student Challenge').click()
        cy.scrollTo(0, 1700)// rolagem 1700 px
        
    })
    it('Voltar a página inicial da apple', () => {  
        cy.go('back')
        cy.go('back')

    })
})

describe('Entrar na Amazon', () => {
    it('Entrar na Amazon', () => { 
        cy.visit('https://www.amazon.com.br/')
    })
    it('Pesquisar por fone', () => {  
        cy.get("#twotabsearchtextbox").type('Fone de ouvido {enter}')
    })
    it('Abrir opção', () => {  
        cy.contains("Fone de Ouvido JBL Tune 110 Intra-Auricular Preto").click()
    })
    it('Selecionar Quantidade', () => {  
        cy.get("#quantity").select(3)
    })
    it('Comprar', () => {  
        cy.get("#buy-now-button").click()
    })
})

describe('Login', () => {
    it('Entrar com Email', () => { //teste deve retornar negativo
        cy.get('*[class^="a-input-text a-span12 auth-autofocus auth-required-field"]').type('matteus_carvalho190l0@gmail.com') 
        cy.get('#continue').click()
    })
   
    // it('Alerta', () => { 
    //     cy.get(".a-alert-heading").should("contain.text", "Houve um problema")
    // })
    
})

describe('Return', () => {
    it('Voltar a página inicial', () => { 
        cy.go('back')
        cy.go('back')
        cy.go('back')
        cy.go('back')
    })

})

