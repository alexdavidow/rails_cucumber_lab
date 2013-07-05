require 'watir'
browser = Watir::Browser.new 
url = "http://localhost:3000"

Given(/^I visit the calculator page for subtract$/) do
  browser.goto "#{url}/subtract" # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 's_first'$/) do |s_number|
  browser.text_field(:id => 's_first').set s_number # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 's_second'$/) do |s_number|
  browser.text_field(:id => 's_second').set s_number # express the regexp above with the code you wish you had
end

Given(/^I click on 'Subtract'$/) do
  browser.button(:id => 'subtract_button').click # express the regexp above with the code you wish you had
end

Then(/^I should view '(\d+)'$/) do |s_answer|
  assert_equal(browser.div(:id => 's_answer').text, s_answer)
end

Given(/^I fill in nothing for 's_first'$/) do
  browser.text_field(:id => 's_first').set '' # express the regexp above with the code you wish you had
end

Given(/^I fill in nothing for 's_second'$/) do
  browser.text_field(:id => 's_second').set '' # express the regexp above with the code you wish you had
end
