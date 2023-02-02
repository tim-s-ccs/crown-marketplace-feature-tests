@skip-non-production
Feature: Supply Teachers - Agency results - Agency payroll - Results by length - Production

  Scenario Outline: How the length of contract affects the results
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
    And I select 'Teacher: (Incl. Qualified and Unqualified Teachers, Tutors)'
    And I enter 'L3 4AA' for the 'postcode'
    And I select '<term>'
    And I click on 'Continue'
    Then I am on the 'Agency results' page
    And there are multiple agencies and I count them
    And the choices used to generate the list are:
      | Looking for: Individual worker                                        |
      | Worker type: Supplied by agency                                       |
      | Payroll provider: Agency                                              |
      | Postcode: L3 4AA                                                      |
      | Search distance: 25 miles                                             |
      | Job type: Teacher: (Incl. Qualified and Unqualified Teachers, Tutors) |
      | Term: <term>                                                          |

    Examples:
      | term                  |
      | Daily Supply          |
      | Long Term (6 weeks+)  |
