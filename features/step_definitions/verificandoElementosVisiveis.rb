Quando('clico no botao') do
   visit '/buscaelementos/botoes' 

   find('#teste').click

end
  
Entao('verifico se o texto apareceu na tela com sucesso') do

    @texto = find('#div1')
    expect(@texto.text).to eq 'Você Clicou no Botão!'
#ou
    page.assert_text('Você Clicou no Botão!')
# ou
    page.has_text?('Você Clicou no Botão!')
#ou 
    have_text('Você Clicou no Botão!')
end