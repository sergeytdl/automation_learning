class Pages
    
    def page_first
        @page_first ||= HomePage.new
        @page_first
    end
end