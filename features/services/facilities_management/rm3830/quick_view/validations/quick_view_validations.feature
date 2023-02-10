Feature: Facilities Management - Quick view - Validations

  Scenario: Quick view validations - Service, Regions and Procurement name
    Given I sign in and navigate to the start page for the 'RM3830' framework in 'facilities management'
    And I click on 'Quick view suppliers'
    Then I am on the 'Services' page
    And I click on 'Continue'
    Then I am on the 'Services' page
    Then I should see the following error messages:
      | Select at least one service you need to include in your procurement |
    And I show all sections
    Then I check the following items:
      | Mechanical and electrical engineering maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on 'Continue'
    Then I am on the 'Regions' page
    Then I should see the following error messages:
      | Select at least one region you need to include in your procurement |
    And I show all sections
    Then I check the following items:
      | Belfast (UKN01) |
    And I click on 'Continue'
    Then I am on the 'Quick view results' page
    Given I have a procurement with the name 'Taken contract name'
    Given I click on 'Save and continue to procurement'
    Then I am on the 'Quick view results' page
    And I should see the following error messages:
      | Enter your contract name  |
    Given I click on 'Save and return to procurements dashboard'
    Then I am on the 'Quick view results' page
    Then I should see the following error messages:
      | Enter your contract name  |
    And I enter 'Taken contract name' into the contract name field
    And I click on 'Save and continue'
    Then I should see the following error messages:
      | This contract name is already in use  |
