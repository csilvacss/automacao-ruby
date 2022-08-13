class Home < SitePrism::Page
    include RSpec::Matchers
    include Capybara::DSL

    #element :btnSobreNos, '//a[contains(text(), "Sobre nós")]'
    element :titleAprendaNaPratica, 'div[class="title"]'
    element :btnSobreNos, 'a[href="/#sobre-nos"]'
    element :btnDepoimentos, 'a[href="/#depoimentos"]'
    element :btnParceiros, 'a[href="/#parceiros"]'
    element :btnFaleConosco, 'a[href="/#faleConosco"]'

    set_url '/'

    def validete_text_homePage(titleHomePage)
        el_titleHomePage = find('div[class="title"]')
        
        if el_title_HomePage.text.eql?(titleHomePage) != true
            raise "Expect element: #{titleHomePage}, but returned: #{el_titleHomePage.text}"
        end
    end

    def click_button(sobre_nos)
        btnSobreNos.click()
    end
    
    def validete_text_home(text_home_feature)
        if text_home_feature == "Aprenda na prática."
            el_titleHomePage = find('div[class="title"]')

            if el_titleHomePage.text.eql?(text_home_feature) != true
                raise "Expect element: #{text_home_feature}, but returned: #{el_titleHomePage.text}"
            end
        end
        
        if
            el_titleSobreNos = find('a[href="/#sobre-nos"]')
            
            if el_titleSobreNos.text.eql?(text_home_feature) != true
                raise "Expect element: #{text_home_feature}, but returned: #{el_titleSobreNos.text}"
            end     
       end
    end
    
    def click_menu_link(menu)
        if menu == "sobre_nos"
            btnSobreNos.click()
        elsif menu == "Depoimentos"
            btnDepoimentos.click()
        end
    end
end