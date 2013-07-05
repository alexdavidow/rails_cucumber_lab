Feature: Subtraction
  in order to avoid mistakes
  As a math beginner
  I want to see the difference of two numbers

  Scenario: Subtract two numbers
    Given I visit the calculator page for subtract
    And I fill in '17' for 's_first'
    And I fill in '9' for 's_second'
    And I click on 'Subtract'
    Then I should view '8'  

  Scenario: Subtract one numbers
    Given I visit the calculator page for subtract
    And I fill in '10' for 's_first'
    And I fill in nothing for 's_second'
    And I click on 'Subtract'
    Then I should view '10' 

  Scenario: Subtract no numbers
    Given I visit the calculator page for subtract
    And I fill in nothing for 's_first'
    And I fill in nothing for 's_second'
    And I click on 'Subtract'
    Then I should view '0'   