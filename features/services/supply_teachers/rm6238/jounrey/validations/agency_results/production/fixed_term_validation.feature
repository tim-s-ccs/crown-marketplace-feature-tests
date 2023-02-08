@skip-non-production
Feature: Supply Teachers - Agency results - Fixed term - Validations - Production

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
    And I enter a date 0 years and 3 months into the future
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '1234' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'L3 4AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I count them

  @smoulder
  Scenario Outline: Annual salary validations
    And I enter the rate '<dayly_rate>' for supplier number 1
    Then I should see the error message 'Annual salary is invalid' for supplier number 1
    And only the following suppliers should have errors:
      | 1 |

    Examples:
      | dayly_rate  |
      | -1          |
      | Taion       |

  Scenario: Annual salary validations - both errors at once
    And I enter the rate '-1' for supplier number 1
    Then I should see the error message 'Annual salary is invalid' for supplier number 1
    And I enter the rate 'Sena' for supplier number 1
    Then I should see the error message 'Annual salary is invalid' for supplier number 1

  Scenario: Annual salary validations - error message disapears with valid data
    And I enter the rate '-1' for supplier number 1
    Then I should see the error message 'Annual salary is invalid' for supplier number 1
    And I enter the rate '20000' for supplier number 1
    And only the following suppliers should have errors:
      | |

  @smoulder
  Scenario: Rate validations - multiple agencies
    And I enter the rate '-1' for supplier number 1
    And I enter the rate 'Sena' for supplier number 2
    And I enter the rate 'L3 4AA' for supplier number 3
    Then I should see the error message 'Annual salary is invalid' for supplier number 1
    Then I should see the error message 'Annual salary is invalid' for supplier number 2
    Then I should see the error message 'Annual salary is invalid' for supplier number 3
    And only the following suppliers should have errors:
      | 1 |
      | 2 |
      | 3 |
