require 'watir'
browser = Watir::Browser.new 
url = "http://localhost:3000"

Given(/^I visit the calculator page for multiply$/) do
  browser.goto "#{url}/multiply" # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 'm_first'$/) do |m_first|
  browser.text_field(:id => 'm_first').set m_first # express the regexp above with the code you wish you had
end

Given(/^I fill in '(\d+)' for 'm_second'$/) do |m_second|
  browser.text_field(:id => 'm_second').set m_second # express the regexp above with the code you wish you had
end

Given(/^I click on 'Multiply'$/) do
  browser.button(:id => 'multiply_button').click # express the regexp above with the code you wish you had
end

Then(/^I should have '(\d+)'$/) do |m_answer|
  assert_equal(browser.div(:id => 'm_answer').text, m_answer) # express the regexp above with the code you wish you had
end

Given(/^I fill in nothing for 'm_first'$/) do
  browser.text_field(:id => 'm_first').set '' # express the regexp above with the code you wish you had
end

Given(/^I fill in nothing for 'm_second'$/) do
  browser.text_field(:id => 'm_second').set '' # express the regexp above with the code you wish you had
end
