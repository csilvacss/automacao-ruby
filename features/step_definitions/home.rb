Dado ('que eu acesse a Home Page do projeto Qa.Coders') do
    home.load
end

Entao ('devo visualizar a informação {string}') do |titleHomePage|
    home.validete_text_homePage(titleHomePage)
end