#encoding:utf-8
Dado("que eu tenha uma fruta com o nome {string}") do |nome|
    @nome_produto = nome
end

Dado("essa fruta possui a descrição {string}") do |descricao|
    @descricao = descricao
end

Dado("desejo vender esse produto por {int} reais") do |preco|
    @preco = preco
end

Dado("a quantidade em estoque é de {int} unidades") do |quantidade|
    @quantidade = quantidade
end

Quando("eu realizo o cadastro dessa fruta") do
    visit'http://localhost:3000/produtos/new'

    find('#produto_nome').set @nome_produto
    find('#produto_descricao').set @descricao
    find('#produto_quantidade').set @quantidade
    find('#produto_preco').set @preco

    click_on'Create Produto'
end

Então("o sistema exibe mensagem de cadastro com sucesso") do
    expect(page).to have_content @nome_produto
end
