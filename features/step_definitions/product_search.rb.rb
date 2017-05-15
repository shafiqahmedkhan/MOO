Given(/^I am on the MOO website$/) do
  @homepage = PageObjects::HomePage.new
  @homepage.load
end

When(/^I search for (.*)$/) do |product|
  @homepage = PageObjects::HomePage.new
  @homepage.navigation_bar.product_search product
end

Then(/^I will see a view of (.*)/) do |product|
  @homepage = PageObjects::HomePage.new
  expect(@homepage.search_results.first_search_result).to have_content(product)
end