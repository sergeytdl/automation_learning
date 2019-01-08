class HomePage < BasePage
    attr_accessor :main_logo

    def initialize
    @main_searche = Element.new(:css, '#main-search-form > div > span > input.sn-suggest-input')
    @find_button = Element.new(:css, '#main-search-form > div > button')
    @find_details1 = Element.new(:css, '#productBlock5458958 > div > div > div.product-options.fields-description > div')
    @find_details2 = Element.new(:css, '#productBlock4706952 > div > div > div.product-options.fields-description > div:nth-child(1)')
    @find_details3 = Element.new(:css, '#productBlock4706946 > div > div > p > a')
    @find_price1 = Element.new(:css, '#productBlock5458958 > div > div > div.product-price > span.price.notranslate')
    @find_price2 = Element.new(:css, '#productBlock4706952 > div > div > div.product-price > span.price.notranslate')
    @find_price3 = Element.new(:css, '#productBlock4706946 > div > div > div.product-price > span.price.notranslate')
end


#####
    def visible?
    @main_searche.isVisible
    @find_button.isVisible
    end

    def load
    visit('')
    end
#####
    def enterItem(item)
    @main_searche.send_keys(item)
    end

#####
    def clickFind
    @find_button.click
    end
#####
    def checkItem
    @find_details1.isVisible
    @find_details2.isVisible
    @find_details3.isVisible
    end
    def checkPrice
    @find_price1.isVisible
    @find_price2.isVisible
    @find_price3.isVisible
    end
end