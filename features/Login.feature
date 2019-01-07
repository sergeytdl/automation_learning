Feature: Basic authentication

     Scenario: User with valid username and password can login
        Given I am on login page
        When I login using username "sergtest" and password "pagaiduparole"
        When I open my page
        When I create email
        When I enter requierd data Email:"sergtest@inbox.lv" Subject:"Test" Text:"Hi there!"
        When I send email
        Then I check unread email

    Scenario: User with invalid username and password can login
        Given I am on login page
        When I login using invalid username "11111" and password "22222"
        When I open my page
        # When I check logo