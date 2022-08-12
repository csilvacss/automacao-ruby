class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    #element :btnSobreNos, '//a[contains(text(), "Sobre nós")]'
    element :titleAprendaNaPratica, 'div[class="title"]'
    element :btnSobreNos, 'a[href="/#sobre-nos"]'
    element :btnDepoimentos, '//a[contains(text(), "Depoimentos")]'
    element :btnParceiros, '//a[contains(text(), "Parceiros")]'
    element :btnFaleConosco, '//a[contains(text(), "Fale conosco")]'

    set_url '/'

    def validete_text_homePage(titleHomePage)
        el_title_HomePage = find('div[class="title"]')
        
        if el_title_HomePage.text.eql?(titleHomePage) != true
            raise "Expect element: #{titleHomePage}, but returned: #{el_title_HomePage.text}"
        end
    end

    def click_button(sobre_nos)
        #binding.pry
        btnSobreNos.click()
    end

    # def validete_text_home(text_home_feature)
    #     if text_home_feature == "Aprenda na prática."
    #         el_title_HomePage = find('div[class="title"]')

    #         if el_title_HomePage.text.eql?(text_home_feature) != true
    #             raise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
    #         end
    #     elsif
    #         el_title_HomePage = find('a[href="/#sobre-nos"]')
            
    #         if el_title_HomePage.text.eql?(text_home_feature) != true
    #             raise "Expect element: #{text_home_feature}, but returned: #{el_title_HomePage.text}"
    #         end        
    #    end
    # end
    # def click_menu_link(menu)
    #     if menu == "sobre_nos"
    #         btnSobreNos.click()
    #     elsif menu == "Depoimentos"
    #         btnDepoimentos.click()
    #     end
    # end
end