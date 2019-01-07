class BasePage          #ko darit ar kuru lapu seit: visit()
    def visit(url)
        Capybara.visit url
    end
 end