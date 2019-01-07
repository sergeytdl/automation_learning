Given(/^I am on login page$/) do
  @pages.page_first.load
  @pages.page_first.visible?
end
#bla
  
  # if find(:css, '#skip22162').visible?
  # find(:css, '#skip22162').click
  # else 
# end

When("I login using username {string} and password {string}") do |login, password|
@pages.page_first.enterLogin(login)
@pages.page_first.enterPassword(password)

end

When(/^I open my page$/) do
@pages.page_first.openMyPage
end
  
When(/^I create email$/) do
@pages.page_first.createEmail
end

When("I enter requierd data Email:{string} Subject:{string} Text:{string}") do |email_adress, subject, message_text |
@pages.page_first.enterEmailAdress(email_adress)
@pages.page_first.enterEmailSubject(subject)
@pages.page_first.enterEmailText(message_text)
end
  
When(/^I send email$/) do
@pages.page_first.sendEmail
end

Then(/^I check unread email$/) do
@pages.page_first.returnCheckMail
@pages.page_first.checkMailBox
end

######

When("I login using invalid username {string} and password {string}") do |login, password|
  @pages.page_first.enterLogin(login)
  @pages.page_first.enterPassword(password)
end
  
# When(/^I check logo$/) do
#   if page.has?(@alert_warning_logo.)
#     raise "!!!!!!!!!!!!!!!!"
#     end
# end
  
