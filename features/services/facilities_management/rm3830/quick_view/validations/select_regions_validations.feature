Feature: Facilities Management - Quick view - Select regions - Validations

  Scenario: No services selected
    Given I sign in and navigate to the start page for the 'RM3830' framework in 'facilities management'
    And I click on 'Quick view suppliers'
    Then I am on the 'Services' page
    And I show all sections
    Then I check the following items:
      | Mechanical and electrical engineering maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Continue'
    Then I should see the following error messages:
      | Select at least one region you need to include in your procurement |