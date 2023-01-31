@skip-production
Feature: Management Consultancy - Lot 4 - Finance - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 4 - Finance'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 4 - Finance'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '1' company can provide consultants
    And the selected suppliers are:
      | SCHULTZ, HYATT AND WEST |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Actuarial services'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '5' companies can provide consultants
    And the selected suppliers are:
      | FARRELL-KIEHN           |
      | KERLUKE, BODE AND LANG  |
      | ROLFSON-WEBER           |
      | SCHULTZ, HYATT AND WEST |
      | UPTON AND SONS          |

  Scenario: Going back from a supplier
    And I click on 'SCHULTZ, HYATT AND WEST'
    Then I am on the 'SCHULTZ, HYATT AND WEST' page
    And the sub title is 'MCF3 lot 4 - Finance'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '1' company can provide consultants
    And the selected suppliers are:
      | SCHULTZ, HYATT AND WEST |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '1' company can provide consultants
    And the selected suppliers are:
      | SCHULTZ, HYATT AND WEST |
