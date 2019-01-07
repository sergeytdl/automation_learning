class Element
    def initialize(type, value)
      @value = Hash[:type => type, :value => value]
    end
  
    def find
      Capybara.find(@value[:type], @value[:value])
      
    end
  
    def visible?
      find.visible?
    end
  
    def isVisible
      unless visible?
        raise "element not visible"
      end
    end
  
    def click
      find.click
    end
  
    def send_keys(value)
      find.send_keys value
    end



    # def advert?
    #   if @button_close_add.visible?
    #   then @button_close_add.click
    #   else
    #     print "OK!"
    # end
end
