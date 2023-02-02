@skip-non-production
Feature: Supply Teachers - Agency results - Fixed term - Daily rate - Production

  Background: Navigate to the Agency results page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select 'An agency who can provide my school with an individual worker'
    And I click on 'Continue'
    Then I am on the 'Do you want an agency to supply the worker?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to start?' page
    And I enter 'tomorrow' for the date
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    And I enter a date 2 and a half months into the future
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'L3 4AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page

  Scenario: Using the calculator
    Then for agency number 1 I should record the rate for the finders fee
    And I enter the rate '10000' for supplier number 1
    Then for agency number 1 I should see rate is lower for the finders fee
    And I enter the rate '20000' for supplier number 1
    Then for agency number 1 I should see rate is greater for the finders fee
    And I enter the rate '41036' for supplier number 1
    Then for agency number 1 I should see rate is greater for the finders fee

  Scenario: When nothing is entered the result is blank and the colours are muted
    Then for agency number 1 I should record the rate for the finders fee
    And I enter the rate '' for supplier number 1
    Then for the agency number 1 I should see '' for the finders fee
    And the results for supplier number 1 are muted
