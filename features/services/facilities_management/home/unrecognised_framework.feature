Feature: Facilities Management - Start pages - With an unrecognised framework

  Scenario: Go to unrecognised famework in the buyer section - logged in
    When I go to the 'facilities management' start page for 'RM007'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM007'
    And I click on 'RM6232'
    Then I am on the 'Find a facilities management supplier' page
    And the framework is 'RM6232'

  Scenario: Go to unrecognised famework in the buyer section - logged out
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    And I go to the 'facilities management' start page for 'RM9812'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM9812'
    And I click on 'RM6232'
    And I am on the Your account page
    And the framework is 'RM6232'

  Scenario: Go to an unrecognised famework in the admin section - logged out
    When I go to '/facilities-management/RM9102/admin'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM9102'
    And I click on 'RM6232'
    Then I am on '/facilities-management/RM6232/start'
    And the framework is 'RM6232'

  @skip-production
  Scenario: Go to an unrecognised famework in the admin section - logged in
    Given I sign in as an admin for the 'RM6232' framework in 'facilities management'
    Then I am on the 'RM6232 administration dashboard' page
    When I go to '/facilities-management/RM9102/admin'
    Then I am on the 'The web address contained an unrecognised framework' page
    And the unrecognised framework is 'RM9102'
    And I click on 'RM6232'
    Then I am on the Your account page
    And the framework is 'RM6232'
