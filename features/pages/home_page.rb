class HomePage < BasePage              # parnem no base_page visas meatodes u ttl
    attr_accessor :main_logo

    def initialize
    @main_logo = Element.new(:css, '#header div.nav-logo > a')
    @input_login = Element.new(:css, '#imapuser')
    @input_password = Element.new(:css, '#pass')
    @button_sign_in = Element.new(:css, '#btn_sign-in')
    @botton_log_out = Element.new(:css, '#header a:nth-child(2) > span')
    @button_cretae_new_email = Element.new(:css, '#mail-menu_li_compose span.mail-menu__item-text')
    @input_email = Element.new(:css, '#suggest-to')
    @input_subject = Element.new(:css, '#subject')
    @input_text = Element.new(:css, '#cke_1_contents > iframe')
    @button_sendEmail = Element.new(:css, '#toolbar_secondary_btn_send')
    @sign_unreadEmail = Element.new(:css, '#eml-list__tbody > tr.eml.eml_unseen > td.eml__cbox > span')
    @button_check_mail = Element.new(:css, '#mail-menu_li_checkmail span.ico-product.prod-refresh')
    # @alert_warning_logo = Element.new(:css, '#flash-messages > div:nth-child(1) > span')

    # @button_close_add = Element.new(:css, '#skip22162')
end


#####
    def visible?
    @main_logo.isVisible
    @input_login.isVisible
    @input_password.isVisible
    @button_sign_in.isVisible
    end

    def load
    visit('')
    end
#####
    def enterLogin(login)
    @input_login.send_keys(login)
    end

    def enterPassword(password)
    @input_password.send_keys(password)
    end
#####
    def openMyPage
    @button_sign_in.click
    end
#####
    def createEmail
    @botton_log_out.isVisible
    @button_cretae_new_email.isVisible
    @button_cretae_new_email.click
    @input_email.isVisible
    @input_subject.isVisible
    @input_text.isVisible
    @button_sendEmail.isVisible
    end
#####
    
    def enterEmailAdress(email_adress)
    @input_email.send_keys(email_adress)
    end
    def enterEmailSubject(subject)
    @input_subject.send_keys(subject)
    end
    def enterEmailText(message_text)
    @input_text.send_keys(message_text)
    end
#####
    def sendEmail
    @button_sendEmail.click
    end
#####
    def checkMailBox
    @sign_unreadEmail.isVisible
    end
#####
    def returnCheckMail
    @button_check_mail.click
    end
#####

end