Quando('clico em botoes') do
    visit '/'
    #clica em link ou botao mapeado
    click_on('Começar Automação Web') 
    visit '/buscaelementos/botoes'
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa1()"]').click

    visit '/'
    click_link('Batista no Medium')
    sleep(5)
end