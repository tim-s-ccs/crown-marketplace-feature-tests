Feature: Facilities Management - Quick view - Results - Validations

  Background: Navigate to the Quick view results page
    Given I sign in and navigate to the start page for the 'RM3830' framework in 'facilities management'
    And I click on 'Quick view suppliers'
    Then I am on the 'Services' page
    And I show all sections
    Then I check the following items:
      | Mechanical and electrical engineering maintenance |
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I show all sections
    Then I check the following items:
      | Belfast (UKN01) |
    And I click on 'Continue'
    Then I am on the 'Quick view results' page

  Scenario Outline: Contract name is blank
    Given I click on '<save_button>'
    Then I should see the following error messages:
      | Enter your contract name  |

  Examples:
      | save_button                               |
      | Save and continue to procurement          |
      | Save and return to procurements dashboard |

  Scenario: Contract name is taken
    Given I have a procurement with the name 'Taken contract name'
    And I enter 'Taken contract name' into the contract name field
    And I click on 'Save and continue'
    Then I should see the following error messages:
      | This contract name is already in use  |