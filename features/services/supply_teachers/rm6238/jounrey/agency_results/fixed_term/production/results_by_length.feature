@skip-non-production
Feature: Supply Teachers - Agency results - Fixed term - Results by length - Production

  Background: I navigate to the employee to start date page
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

  Scenario: Changing the length of the contract changes the result values only
    And I enter '06/05/2022' for the date
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    And I enter '06/07/2022' for the date
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I record the rates
    And the number of months in the results is '2'
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 25 miles       |
    Then I click on 'Back'
    And I am on the 'What is your school’s postcode?' page
    Then I click on 'Back'
    And I am on the "What would the employee's annual salary be?" page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to stop working?' page
    And I enter '06/05/2023' for the date
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and the rates are greater
    And the number of months in the results is '12'
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 25 miles       |
    Then I click on 'Back'
    And I am on the 'What is your school’s postcode?' page
    Then I click on 'Back'
    And I am on the "What would the employee's annual salary be?" page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to stop working?' page
    And I enter '06/08/2024' for the date
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and the rates are the same
    And the number of months in the results is '27'
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 25 miles       |

  Scenario Outline: Half months are shown correctly
    And I enter '01/01/2022' for the date
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    And I enter '<date>' for the date
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I count them
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 25 miles       |
    And the number of months in the results is '<number_of_months>'
    
    Examples:
      | date        | number_of_months  |
      | 01/01/2022  | 0                 |
      | 16/01/2022  | 0                 |
      | 17/01/2022  | 0.5               |
      | 30/01/2022  | 0.5               |
      | 01/02/2022  | 1                 |
      | 18/04/2022  | 3.5               |
