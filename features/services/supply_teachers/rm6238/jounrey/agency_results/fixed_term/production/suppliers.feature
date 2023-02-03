@skip-non-production
Feature: Supply Teachers - Agency results - Fixed term - Agencies - Production

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
    And I enter 'today' for the date
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    And I enter a date 0 years and 3 months into the future
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    And I enter '28000' for the 'salary'
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    And I enter 'SW1A 1AA' for the 'postcode'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I record them

  Scenario: I can naviagte to the agency details
    Given I click on agency number 1
    Then I am on that agencies page
    And the sub title is Agency details
    And they have the branch and contact details for the following:
      | Branch        |
      | Region        |
      | Contact name  |
      | Contact email |
      | Phone number  |
      | Address       |
    And the the correct type of rates:
      | Teacher: (Incl. Qualified and Unqualified Teachers, Tutors)                           | £ |
      | Educational Support Staff: (incl. Cover Supervisor, Teaching Assistants)              | £ |
      | Senior Roles: Headteacher and Senior Leadership positions                             | £ |
      | Other Roles: (Invigilators, Admin & Clerical, IT Staff, Finance Staff, Cleaners etc.) | £ |
      | Over 12 Week Reduction                                                                | % |
      | Nominated Worker                                                                      | £ |
      | Fixed Term                                                                            | % |

  @file-download
  Scenario: I can download the shortlist document
    And I click on 'Download shortlist of agencies'
    Then the spreadsheet 'Shortlist of agencies' is downloaded

  Scenario: Back buttons work
    Given I click on agency number 1
    Then I am on that agencies page
    And the sub title is Agency details
    Then I click on 'Back'
    Then I am on the 'Agency results' page
    Then I click on 'Back'
    Then I am on the 'What is your school’s postcode?' page
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are the same agencies as before
    Then I click on 'Back'
    And I am on the 'What is your school’s postcode?' page
    Then I click on 'Back'
    And I am on the "What would the employee's annual salary be?" page
    And I click on 'Continue'
    Then I am on the 'What is your school’s postcode?' page
    Then I click on 'Back'
    And I am on the "What would the employee's annual salary be?" page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to stop working?' page
    And I click on 'Continue'
    Then I am on the "What would the employee's annual salary be?" page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to stop working?' page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to start?' page
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to stop working?' page
    Then I click on 'Back'
    And I am on the 'What date do you want the employee to start?' page
    Then I click on 'Back'
    And I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I click on 'Continue'
    Then I am on the 'What date do you want the employee to start?' page
    Then I click on 'Back'
    And I am on the 'Do you want the agency to manage the worker’s pay?' page
    Then I click on 'Back'
    And I am on the 'Do you want an agency to supply the worker?' page
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    Then I click on 'Back'
    And I am on the 'Do you want an agency to supply the worker?' page
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    Then I click on 'Back'
    And I am on the 'Do you want an agency to supply the worker?' page
    Then I click on 'Back'
    And I am on the 'What is your school looking for?' page
    And I click on 'Continue'
    And I am on the 'Do you want an agency to supply the worker?' page
