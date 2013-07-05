Feature: Multiplication
  in order to avoid mistakes
  As a math beginner
  I want to see the product of two numbers

  Scenario: Multiply two numbers
    Given I visit the calculator page for multiply
    And I fill in '4' for 'm_first'
    And I fill in '11' for 'm_second'
    And I click on 'Multiply'
    Then I should have '44'

  Scenario: Multiply one number
    Given I visit the calculator page for multiply
    And I fill in '5' for 'm_first'
    And I fill in nothing for 'm_second'
    And I click on 'Multiply'
    Then I should have '0'

  Scenario: Multiply no numbers
    Given I visit the calculator page for multiply
    And I fill in nothing for 'm_first'
    And I fill in nothing for 'm_second'
    And I click on 'Multiply'
    Then I should have '0'  