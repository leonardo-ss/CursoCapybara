Quando('eu faco um upload de arquivo') do
    visit '/outros/uploaddearquivos'
    attach_file('upload','C:\Users\lssilva\Desktop\Capybara\Testes\features\download.jpg',make_visible: true)
    sleep(2)
end