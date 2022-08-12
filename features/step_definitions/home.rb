Dado ('que eu acesse a Home Page do projeto Qa.Coders') do
    home.load
end

Entao ('devo visualizar a informação {string}') do |titleHomePage|
    home.validate_text_home(titleHomePage)
end

Quando('clico no menu {string}') do |sobre_nos|
    home.click_button(sobre_nos)
end



# Entao ('devo visualizar a informação {string}') do |text_home_feature|
#     home.validate_text_home(text_home_feature)
# end

# # Quando('clico no menu {string}') do |menu|
# #     home.click_menu_link(menu)
# end