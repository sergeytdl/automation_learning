Given(/^I am on login page$/) do
  @pages.page_first.load
  @pages.page_first.visible?
end

When("I enter in the search field {string}") do |item|
@pages.page_first.enterItem(item)
end
  
When(/^I click to find the item$/) do
@pages.page_first.clickFind
end

When(/^I check that I can see correct items$/) do
@pages.page_first.checkItem
end

When(/^I check that a price for each item is correct$/) do
@pages.page_first.checkPrice
end