require 'watir'
browser = Watir::Browser.new 
url = "http://localhost:3000"

Given(/^I visit the calculator page for divide$/) do
  browser.goto "#{url}/divide" # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 'd_first'$/) do |d_first|
  browser.text_field(:id => 'd_first').set d_first # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 'd_second'$/) do |d_second|
  browser.text_field(:id => 'd_second').set d_second # express the regexp above with the code you wish you had
end

Given(/^I click on 'Divide'$/) do
  browser.button(:id => 'divide_button').click # express the regexp above with the code you wish you had
end

Then(/^I should get '(\d+)'$/) do |d_answer|
  assert_equal(browser.div(:id => 'd_answer').text, d_answer) # express the regexp above with the code you wish you had
end

Given(/^I fill in nothing for 'd_second'$/) do
  browser.text_field(:id => 'd_second').set '' # express the regexp above with the code you wish you had
end

Then(/^I should get 'Cannot divide by zero'$/) do 
  assert_equal(browser.div(:id => 'd_answer').text, 'Cannot divide by zero') # express the regexp above with the code you wish you had
end

Given(/^I fill in nothing for 'd_first'$/) do
  browser.text_field(:id => 'd_first').set '' # express the regexp above with the code you wish you had
end