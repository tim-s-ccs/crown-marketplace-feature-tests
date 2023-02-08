Feature: Supply Teachers - Start pages

  Scenario: Buyer sees start page
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page

  Scenario: Buyer navigates to sign in page
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    When I click on 'Start now'
    Then I am on the 'Sign in to find supply teachers and agency workers' page

  @smoulder
  Scenario: Logging in
    When I go to the 'supply teachers' start page for 'RM6238'
    Then I am on the 'Find supply teachers and agency workers' page
    When I click on 'Start now'
    Then I am on the 'Sign in to find supply teachers and agency workers' page
    Then I click on 'Sign in with CCS'
    Then I sign in
    Then I am on the 'What is your school looking for?' page
