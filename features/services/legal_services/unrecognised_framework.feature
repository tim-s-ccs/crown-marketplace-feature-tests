Feature: Legal Services - Start pages - With an unrecognised framework

  @smoulder
  Scenario: Go to unrecognised famework in the buyer section - logged in
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    And I go to the 'legal services' start page for 'RM0172'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM0172'
    And I click on 'RM6240'
    Then I am on the 'Find legal services for the wider public sector' page
    And the framework is 'RM6240'

  Scenario: Go to unrecognised famework in the buyer section - logged out
    When I go to the 'legal services' start page for 'RM007'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM007'
    And I click on 'RM6240'
    Then I am on the 'Find legal services for the wider public sector' page
    And the framework is 'RM6240'
  
  Scenario: Go to an unrecognised famework in the admin section - logged out
    When I go to '/legal-services/RM0172/admin'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM0172'
    And I click on 'RM6240'
    Then I am on '/legal-services/RM6240/admin/sign-in'
    And the framework is 'RM6240'

  @skip-production
  Scenario: Go to an unrecognised famework in the admin section - logged in
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    Then I am on the 'Manage supplier data' page
    When I go to '/legal-services/RM0172/admin'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM0172'
    And I click on 'RM6240'
    Then I am on the 'Manage supplier data' page
    And the framework is 'RM6240'
