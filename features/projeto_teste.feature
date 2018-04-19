#language: pt 

    Funcionalidade: Cadastro de Frutas Hortifruti
        Eu como usuário do sistema do Mercado da Vila
        Desejo cadastrar meu produtos no sistema

    Cenário: Cadastro de Frutas Novas
        Dado que eu tenha uma fruta com o nome "Banana Prata"
            E essa fruta possui a descrição "Banana Mais Doce do Brasil"
            E desejo vender esse produto por 15 reais
            E a quantidade em estoque é de 30 unidades
        Quando eu realizo o cadastro dessa fruta
        Então o sistema exibe mensagem de cadastro com sucesso
