Quando('acesso a url de botoes') do
    visit '/buscaelementos/botoes'
end
  
Entao('verifico se encontrei os elementos') do
    #all busca todos os elementos que contenham o all
        #'.' informa que é uma classe, no caso a baixo é a classe = btn
    page.all('.btn')

    #busca um elemento mapeado
        # '#' informa que é um id, no caso a baixo é o id = teste
    find('#teste')
    find_by_id('teste')
    #busca um botao
    find_button(class: 'btn waves-light')
    #busca o primeiro elemento mapeado
    first('.btn')
    #busca por algum link
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end