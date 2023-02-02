@skip-non-production
Feature: Supply Teachers - Agency results - Fixed term - Results by location - Production

  Background: Navigate to the What is your school’s postcode? page
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
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page

  Scenario: Changeing the radius changes the results
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
    And I click on '1 mile'
    Then I am on the 'Agency results' page
    And there is an equal or lower number of agencies
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 1 mile         |
    And I click on '5 miles'
    Then I am on the 'Agency results' page
    And there is an equal or greater number of agencies
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 5 miles        |
    And I click on '10 miles'
    Then I am on the 'Agency results' page
    And there is an equal or greater number of agencies
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 10 miles       |
    And I click on '50 miles'
    Then I am on the 'Agency results' page
    And there is an equal or greater number of agencies
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 50 miles       |

  Scenario: Changing location changes the results
    And I enter 'L3 4AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I record them
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: L3 4AA                |
      | Search distance: 25 miles       |
    Then I click on 'Back'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are different agencies shown
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: School        |
      | Postcode: SW1A 1AA              |
      | Search distance: 25 miles       |
