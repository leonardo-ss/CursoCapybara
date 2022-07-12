Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    find('.activator').hover
    sleep(2)
end