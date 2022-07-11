Quando('acesso a url') do
  visit '/treinamento/home' 
end
  
Entao('eu verifico se estou na pagina correta') do
    #verifica se esta na pagina
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home')
end
