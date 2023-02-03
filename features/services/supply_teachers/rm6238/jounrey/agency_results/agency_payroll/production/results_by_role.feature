@skip-non-production
Feature: Supply Teachers - Agency results - Agency payroll - Results by role - Production

  Scenario Outline: How the roles affects the results
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
    And I select 'Daily Supply'
    And I enter 'SW1A 1AA' for the 'postcode'
    And I select '<role>'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I count them
    And the choices used to generate the list are:
      | Looking for: Individual worker  |
      | Worker type: Supplied by agency |
      | Payroll provider: Agency        |
      | Postcode: SW1A 1AA              |
      | Search distance: 25 miles       |
      | Job type: <role>                |
      | Term: Daily Supply              |

    Examples:
      | role                                                                                  |
      | Teacher: (Incl. Qualified and Unqualified Teachers, Tutors)                           |
      | Educational Support Staff: (incl. Cover Supervisor, Teaching Assistants)              |
      | Senior Roles: Headteacher and Senior Leadership positions                             |
      | Other Roles: (Invigilators, Admin & Clerical, IT Staff, Finance Staff, Cleaners etc.) |
