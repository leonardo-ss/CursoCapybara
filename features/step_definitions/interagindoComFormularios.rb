Quando('eu faco cadastro') do
    visit '/users/new'

    fill_in(id: 'user_name', with: 'Leonardo')
    find('#user_lastname').set('Santos')
    find('#user_email').send_keys('leo.silva@gmail.com')
    find('#user_address').set('rua teste')
    find('#user_university').set('Teste')
    find('#user_profile').set('Analista de Teste')
    find('#user_gender').set('Masculino')
    find('#user_age').set('27')

    find('input[value="Criar"]').click
    sleep(2)
end
  
Entao('vefifico se fui cadastrado') do
    texto= find('#notice')
    
    expect(texto.text).to eq 'Usuário Criado com sucesso'
end