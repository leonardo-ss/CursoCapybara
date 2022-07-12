Quando('eu entro na janela e verifico a mensagem') do
    visit '/mudancadefoco/janela'

    janela = window_opened_by do
        click_on('Clique aqui')
    end

    within_window janela do
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        @msg = find('h5')
        expect(@msg.text).to eq 'Você Abriu uma nova janela!!'
        janela.close
        sleep(2)
    end
end
  
Quando('eu entro no alert e verifico faco a acao') do
    visit '/mudancadefoco/alert'
    find('button[onclick="jsAlert()"]').click
    page.accept_alert
    sleep(2)

    find('button[onclick="jsConfirm()"]').click
    page.dismiss_confirm
    sleep(2)

    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'leonardo')
end