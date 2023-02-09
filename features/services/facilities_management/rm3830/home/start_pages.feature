Feature: Facilities Management - Start pages

  Scenario: Buyer sees start page
    When I go to the 'facilities management' start page for 'RM3830'
    Then I am on the 'Find a facilities management supplier' page
    And I can see the notification banner with text:
      | Important                                                                   |
      | There is a new agreement for Facilities Management and Workplace Services.  |
      | Before continuing with this agreement please contact CCS.                   |

  Scenario: Buyer navigates to sign in page
    When I go to the 'facilities management' start page for 'RM3830'
    Then I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    Then I am on the 'Sign in to your account' page

  @smoulder
  Scenario: Logging in
    When I go to the 'facilities management' start page for 'RM3830'
    Then I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    Then I am on the 'Sign in to your account' page
    Then I sign in
    Then I am on the facilities management dashboard
    And I can see the notification banner with text:
      | Important                                                                   |
      | There is a new agreement for Facilities Management and Workplace Services.  |
      | Before continuing with this agreement please contact CCS.                   |
