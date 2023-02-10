Feature: Supply Teachers - Start pages - With an unrecognised framework

  @smoulder
  Scenario: Go to unrecognised famework in the buyer section - logged in
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I go to the 'supply teachers' start page for 'RM0172'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM0172'
    And I click on 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    And the framework is 'RM6238'

  Scenario: Go to unrecognised famework in the buyer section - logged out
    When I go to the 'supply teachers' start page for 'RM007'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM007'
    And I click on 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    And the framework is 'RM6238'

  Scenario: Go to an unrecognised famework in the admin section - logged out
    When I go to '/supply-teachers/RM0172/admin'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM0172'
    And I click on 'RM6238'
    Then I am on '/supply-teachers/RM6238/admin/sign-in'
    And the framework is 'RM6238'

  @skip-production
  Scenario: Go to an unrecognised famework in the admin section - logged in
    Given I sign in as an admin for the 'RM6238' framework in 'supply teachers'
    Then I am on the 'Supply teachers and agency workers' page
    When I go to '/supply-teachers/RM0172/admin'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM0172'
    And I click on 'RM6238'
    Then I am on the 'Supply teachers and agency workers' page
    And the framework is 'RM6238'
