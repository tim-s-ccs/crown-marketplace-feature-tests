@skip-non-production
Feature: Supply Teachers - Agency results - Agency payroll - Agencies - Production

  Background: Navigate to the Agency results page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select 'An agency who can provide my school with an individual worker'
    And I click on 'Continue'
    Then I am on the 'Do you want an agency to supply the worker?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'School postcode and worker requirements' page
    And I enter 'L3 4AA' for the 'postcode'
    And I select 'Teacher: (Incl. Qualified and Unqualified Teachers, Tutors)'
    And I select 'Daily Supply'
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
    Then the file 'Shortlist of agencies' is downloaded with the 'xlsx' extension

  Scenario: Back buttons work
    Given I click on agency number 1
    Then I am on that agencies page
    And the sub title is Agency details
    Then I click on 'Back'
    Then I am on the 'Agency results' page
    Then I click on 'Back'
    Then I am on the 'School postcode and worker requirements' page
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are the same agencies as before
    Then I click on 'Back'
    Then I am on the 'School postcode and worker requirements' page
    Then I click on 'Back'
    Then I am on the 'Do you want the agency to manage the worker’s pay?' page
    And I click on 'Continue'
    Then I am on the 'School postcode and worker requirements' page
    Then I click on 'Back'
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
