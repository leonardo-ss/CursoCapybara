Quando('entro no iframe e preencho os campos') do
    visit '/mudancadefoco/iframe'
    within_frame('id_do_iframe') do
        find('#first_name').set('Leo')
        find('#last_name').set('Santos')
        find('#password').set('123456')
        find('#email').set('leo@santos.com')
        find('#textarea1').set('Teste')
        # sleep(2)
    end
end
  
Quando('entro no modal e verifico o texto') do
    visit '/mudancadefoco/modal'
    click_on('Abrir')

    within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eq 'Modal Teste'
        find('.modal-close')
    end
    sleep(2)
end