@skip-production
Feature: Management Consultancy - Lot 5 - HR - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 5 - HR'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 5 - HR'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | ERNSER GROUP                  |
      | GERHOLD-RUNTE                 |
      | PREDOVIC, MCGLYNN AND FRIESEN |
      | THIEL-KUNDE                   |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Capability development'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '27' companies can provide consultants
    And the selected suppliers are:
      | BOYER, HEGMANN AND TURCOTTE   |
      | BRAKUS GROUP                  |
      | DACH INC                      |
      | DAVIS, HALEY AND HAND         |
      | DIBBERT-ANKUNDING             |
      | ERNSER GROUP                  |
      | GERHOLD-RUNTE                 |
      | GUTMANN, LEMKE AND JOHNSTON   |
      | KESSLER AND SONS              |
      | KOELPIN LLC                   |
      | KRAJCIK-ZIEMANN               |
      | NITZSCHE-DECKOW               |
      | O'KEEFE-ROWE                  |
      | PARISIAN AND SONS             |
      | PREDOVIC, MCGLYNN AND FRIESEN |
      | RAU GROUP                     |
      | REYNOLDS-HALVORSON            |
      | ROBEL GROUP                   |
      | ROLFSON-WEBER                 |
      | SAUER, MCCULLOUGH AND SCHADEN |
      | SCHADEN, O'CONNER AND HIRTHE  |
      | SCHUPPE INC                   |
      | STEUBER AND SONS              |
      | STIEDEMANN AND SONS           |
      | THIEL-KUNDE                   |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '27' companies can provide consultants
    And the selected suppliers are:
      | WILLIAMSON GROUP          |
      | WITTING, HANE AND WIEGAND |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '27' companies can provide consultants
    And the selected suppliers are:
      | BOYER, HEGMANN AND TURCOTTE   |
      | BRAKUS GROUP                  |
      | DACH INC                      |
      | DAVIS, HALEY AND HAND         |
      | DIBBERT-ANKUNDING             |
      | ERNSER GROUP                  |
      | GERHOLD-RUNTE                 |
      | GUTMANN, LEMKE AND JOHNSTON   |
      | KESSLER AND SONS              |
      | KOELPIN LLC                   |
      | KRAJCIK-ZIEMANN               |
      | NITZSCHE-DECKOW               |
      | O'KEEFE-ROWE                  |
      | PARISIAN AND SONS             |
      | PREDOVIC, MCGLYNN AND FRIESEN |
      | RAU GROUP                     |
      | REYNOLDS-HALVORSON            |
      | ROBEL GROUP                   |
      | ROLFSON-WEBER                 |
      | SAUER, MCCULLOUGH AND SCHADEN |
      | SCHADEN, O'CONNER AND HIRTHE  |
      | SCHUPPE INC                   |
      | STEUBER AND SONS              |
      | STIEDEMANN AND SONS           |
      | THIEL-KUNDE                   |

  Scenario: Going back from a supplier
    And I click on 'GERHOLD-RUNTE'
    Then I am on the 'GERHOLD-RUNTE' page
    And the sub title is 'MCF3 lot 5 - HR'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | ERNSER GROUP                  |
      | GERHOLD-RUNTE                 |
      | PREDOVIC, MCGLYNN AND FRIESEN |
      | THIEL-KUNDE                   |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '4' companies can provide consultants
    And the selected suppliers are:
      | ERNSER GROUP                  |
      | GERHOLD-RUNTE                 |
      | PREDOVIC, MCGLYNN AND FRIESEN |
      | THIEL-KUNDE                   |
