Feature: Basic authentication

     Scenario: User opens the webpage and can find items.
        Given I am on login page
        When I enter in the searche field "JBL"
        When I click to find the item
        When I check that I can see correct items
        When I check that a price for each item is correct