require 'watir'
browser = Watir::Browser.new 
url = "http://localhost:3000"

Given(/^I visit the calculator page for add$/) do
  browser.goto "#{url}/add" # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 'first'$/) do |number|
  browser.text_field(:id => 'first').set number # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 'second'$/) do |number|
  browser.text_field(:id => 'second').set number # express the regexp above with the code you wish you had
end

Given(/^I click on 'Add'$/) do
  browser.button(:id => 'add_button').click # express the regexp above with the code you wish you had
end

Then(/^I should see '(\d+)'$/) do |answer|
  assert_equal(browser.div(:id => 'answer').text, answer) 
end

Given(/^I fill in '' for 'first'$/) do
  browser.text_field(:id => 'first').set '' # express the regexp above with the code you wish you had
end

Given(/^I fill in '' for 'second'$/) do
  browser.text_field(:id => 'second').set '' # express the regexp above with the code you wish you had
end

