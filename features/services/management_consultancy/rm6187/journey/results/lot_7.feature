@skip-production
Feature: Management Consultancy - Lot 7 - Health, Social Care and Community - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 7 - Health, Social Care and Community'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 7 - Health, Social Care and Community'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '3' companies can provide consultants
    And the selected suppliers are:
      | KIEHN, BLICK AND FUNK |
      | PROSACCO INC          |
      | SHANAHAN LLC          |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Alternative delivery models'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '37' companies can provide consultants
    And the selected suppliers are:
      | ABERNATHY, FAY AND BEER         |
      | BASHIRIAN, BODE AND STEUBER     |
      | BERGNAUM LLC                    |
      | BREKKE, RAU AND REINGER         |
      | CASSIN-HAAG                     |
      | COLLIER INC                     |
      | DIETRICH AND SONS               |
      | DURGAN AND SONS                 |
      | FISHER-DECKOW                   |
      | GOTTLIEB, SCHMITT AND GREEN     |
      | GRAHAM, BREKKE AND HAMILL       |
      | HESSEL, GREENHOLT AND BLICK     |
      | HODKIEWICZ-LEDNER               |
      | HUDSON LLC                      |
      | JENKINS INC                     |
      | JOHNSON GROUP                   |
      | KIEHN, BLICK AND FUNK           |
      | KONOPELSKI AND SONS             |
      | KREIGER, SWIFT AND LEDNER       |
      | LANGWORTH, HETTINGER AND KUNDE  |
      | LANGWORTH-KEELING               |
      | LITTEL-WELCH                    |
      | MCCLURE, EMARD AND LITTLE       |
      | PAUCEK-HERMAN                   |
      | PREDOVIC, MCGLYNN AND FRIESEN   |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '37' companies can provide consultants
    And the selected suppliers are:
      | PROSACCO INC                    |
      | REICHEL-HODKIEWICZ              |
      | REICHERT LLC                    |
      | SHANAHAN LLC                    |
      | SIMONIS-FARRELL                 |
      | SMITH AND SONS                  |
      | STARK, KUHLMAN AND FAHEY        |
      | STIEDEMANN, ANKUNDING AND FUNK  |
      | TORP GROUP                      |
      | WILLIAMSON GROUP                |
      | WINDLER, REICHERT AND HARBER    |
      | WITTING, HANE AND WIEGAND       |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '37' companies can provide consultants
    And the selected suppliers are:
      | ABERNATHY, FAY AND BEER         |
      | BASHIRIAN, BODE AND STEUBER     |
      | BERGNAUM LLC                    |
      | BREKKE, RAU AND REINGER         |
      | CASSIN-HAAG                     |
      | COLLIER INC                     |
      | DIETRICH AND SONS               |
      | DURGAN AND SONS                 |
      | FISHER-DECKOW                   |
      | GOTTLIEB, SCHMITT AND GREEN     |
      | GRAHAM, BREKKE AND HAMILL       |
      | HESSEL, GREENHOLT AND BLICK     |
      | HODKIEWICZ-LEDNER               |
      | HUDSON LLC                      |
      | JENKINS INC                     |
      | JOHNSON GROUP                   |
      | KIEHN, BLICK AND FUNK           |
      | KONOPELSKI AND SONS             |
      | KREIGER, SWIFT AND LEDNER       |
      | LANGWORTH, HETTINGER AND KUNDE  |
      | LANGWORTH-KEELING               |
      | LITTEL-WELCH                    |
      | MCCLURE, EMARD AND LITTLE       |
      | PAUCEK-HERMAN                   |
      | PREDOVIC, MCGLYNN AND FRIESEN   |

  Scenario: Going back from a supplier
    And I click on 'PROSACCO INC'
    Then I am on the 'PROSACCO INC' page
    And the sub title is 'MCF3 lot 7 - Health, Social Care and Community'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '3' companies can provide consultants
    And the selected suppliers are:
      | KIEHN, BLICK AND FUNK |
      | PROSACCO INC          |
      | SHANAHAN LLC          |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '3' companies can provide consultants
    And the selected suppliers are:
      | KIEHN, BLICK AND FUNK |
      | PROSACCO INC          |
      | SHANAHAN LLC          |
