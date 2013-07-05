Feature: Division
  in order to avoid mistakes
  As a math beginner
  I want to see the division of two numbers

  Scenario: Divide two numbers
    Given I visit the calculator page for divide
    And I fill in '24' for 'd_first'
    And I fill in '8' for 'd_second'
    And I click on 'Divide'
    Then I should get '3'

  Scenario: Divide one number
    Given I visit the calculator page for divide
    And I fill in '15' for 'd_first'
    And I fill in nothing for 'd_second'
    And I click on 'Divide'
    Then I should get 'Cannot divide by zero'

  Scenario: Divide no numbers
    Given I visit the calculator page for divide
    And I fill in nothing for 'd_first'
    And I fill in nothing for 'd_second'
    And I click on 'Divide'
    Then I should get 'Cannot divide by zero'
