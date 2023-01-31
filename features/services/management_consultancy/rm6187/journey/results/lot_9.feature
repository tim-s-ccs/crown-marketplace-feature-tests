@skip-production
Feature: Management Consultancy - Lot 9 - Environmental Sustainability and Socio-economic Development - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 9 - Environmental Sustainability and Socio-economic Development'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 9 - Environmental Sustainability and Socio-economic Development'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | CARTER-BEATTY                   |
      | LANGWORTH, HETTINGER AND KUNDE  |
      | LEDNER-MAYER                    |
      | UPTON AND SONS                  |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Coastal'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '11' companies can provide consultants
    And the selected suppliers are:
      | CARTER-BEATTY                   |
      | LANGWORTH, HETTINGER AND KUNDE  |
      | LEDNER-MAYER                    |
      | LEGROS, LANGOSH AND MEDHURST    |
      | PREDOVIC, MCGLYNN AND FRIESEN   |
      | REYNOLDS-HALVORSON              |
      | SCHAMBERGER, RYAN AND THIEL     |
      | SCHMIDT, MARQUARDT AND HAMMES   |
      | TOWNE AND SONS                  |
      | UPTON AND SONS                  |
      | WOLF, BEIER AND GOODWIN         |

  Scenario: Going back from a supplier
    And I click on 'LEDNER-MAYER'
    Then I am on the 'LEDNER-MAYER' page
    And the sub title is 'MCF3 lot 9 - Environmental Sustainability and Socio-economic Development'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | CARTER-BEATTY                   |
      | LANGWORTH, HETTINGER AND KUNDE  |
      | LEDNER-MAYER                    |
      | UPTON AND SONS                  |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | CARTER-BEATTY                   |
      | LANGWORTH, HETTINGER AND KUNDE  |
      | LEDNER-MAYER                    |
      | UPTON AND SONS                  |
