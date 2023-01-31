@skip-production
Feature: Management Consultancy - Lot 1 - Business - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 1 - Business'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 1 - Business'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                 |
      | BASHIRIAN, BODE AND STEUBER               |
      | BOGISICH, BAUMBACH AND KERTZMANN          |
      | BRUEN-WITTING                             |
      | CONSIDINE GROUP                           |
      | CRONA-ZIEME                               |
      | DAVIS, HALEY AND HAND                     |
      | DIBBERT-ANKUNDING                         |
      | ERNSER GROUP                              |
      | HERMANN-WEHNER                            |
      | HILLL, HICKLE AND BODE                    |
      | JOHNSON GROUP                             |
      | KOELPIN LLC                               |
      | KOZEY-KEELING                             |
      | LANGWORTH, HETTINGER AND KUNDE            |
      | LEDNER-MAYER                              |
      | ORTIZ, STREICH AND HEANEY                 |
      | PARKER INC                                |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG  |
      | SCHILLER-SCHAMBERGER                      |
      | TORP GROUP                                |
      | WILLIAMSON GROUP                          |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check the following items:
      | Business case development                             |
      | Business continuity and/or disaster recovery planning |
      | Forecasting and/or planning                           |
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '39' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE         |
      | BASHIRIAN, BODE AND STEUBER       |
      | BOGISICH, BAUMBACH AND KERTZMANN  |
      | BRAKUS GROUP                      |
      | BRUEN-WITTING                     |
      | CASSIN-HAAG                       |
      | CONSIDINE GROUP                   |
      | CRONA-ZIEME                       |
      | DAVIS, HALEY AND HAND             |
      | DIBBERT-ANKUNDING                 |
      | DURGAN AND SONS                   |
      | ERNSER GROUP                      |
      | FARRELL-MARVIN                    |
      | HAAG, SATTERFIELD AND MERTZ       |
      | HERMANN-WEHNER                    |
      | HILLL, HICKLE AND BODE            |
      | JOHNSON GROUP                     |
      | KEMMER, LEFFLER AND LEGROS        |
      | KOELPIN LLC                       |
      | KOZEY-KEELING                     |
      | KRAJCIK-ZIEMANN                   |
      | KUHIC AND SONS                    |
      | LANGWORTH, HETTINGER AND KUNDE    |
      | LEBSACK, KOVACEK AND GOYETTE      |
      | LEDNER-MAYER                      |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '39' companies can provide consultants
    And the selected suppliers are:
      | MCCLURE, EMARD AND LITTLE                 |
      | MURPHY, PFEFFER AND GREENFELDER           |
      | ORTIZ, STREICH AND HEANEY                 |
      | PARKER INC                                |
      | PREDOVIC, MCGLYNN AND FRIESEN             |
      | ROLFSON-WEBER                             |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG  |
      | SCHADEN AND SONS                          |
      | SCHAMBERGER, RYAN AND THIEL               |
      | SCHILLER-SCHAMBERGER                      |
      | SCHOWALTER LLC                            |
      | TORP GROUP                                |
      | WILL-FRIESEN                              |
      | WILLIAMSON GROUP                          |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '39' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE         |
      | BASHIRIAN, BODE AND STEUBER       |
      | BOGISICH, BAUMBACH AND KERTZMANN  |
      | BRAKUS GROUP                      |
      | BRUEN-WITTING                     |
      | CASSIN-HAAG                       |
      | CONSIDINE GROUP                   |
      | CRONA-ZIEME                       |
      | DAVIS, HALEY AND HAND             |
      | DIBBERT-ANKUNDING                 |
      | DURGAN AND SONS                   |
      | ERNSER GROUP                      |
      | FARRELL-MARVIN                    |
      | HAAG, SATTERFIELD AND MERTZ       |
      | HERMANN-WEHNER                    |
      | HILLL, HICKLE AND BODE            |
      | JOHNSON GROUP                     |
      | KEMMER, LEFFLER AND LEGROS        |
      | KOELPIN LLC                       |
      | KOZEY-KEELING                     |
      | KRAJCIK-ZIEMANN                   |
      | KUHIC AND SONS                    |
      | LANGWORTH, HETTINGER AND KUNDE    |
      | LEBSACK, KOVACEK AND GOYETTE      |
      | LEDNER-MAYER                      |

  Scenario: Going back from a supplier
    And I click on 'DIBBERT-ANKUNDING'
    Then I am on the 'DIBBERT-ANKUNDING' page
    And the sub title is 'MCF3 lot 1 - Business'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                 |
      | BASHIRIAN, BODE AND STEUBER               |
      | BOGISICH, BAUMBACH AND KERTZMANN          |
      | BRUEN-WITTING                             |
      | CONSIDINE GROUP                           |
      | CRONA-ZIEME                               |
      | DAVIS, HALEY AND HAND                     |
      | DIBBERT-ANKUNDING                         |
      | ERNSER GROUP                              |
      | HERMANN-WEHNER                            |
      | HILLL, HICKLE AND BODE                    |
      | JOHNSON GROUP                             |
      | KOELPIN LLC                               |
      | KOZEY-KEELING                             |
      | LANGWORTH, HETTINGER AND KUNDE            |
      | LEDNER-MAYER                              |
      | ORTIZ, STREICH AND HEANEY                 |
      | PARKER INC                                |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG  |
      | SCHILLER-SCHAMBERGER                      |
      | TORP GROUP                                |
      | WILLIAMSON GROUP                          |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                 |
      | BASHIRIAN, BODE AND STEUBER               |
      | BOGISICH, BAUMBACH AND KERTZMANN          |
      | BRUEN-WITTING                             |
      | CONSIDINE GROUP                           |
      | CRONA-ZIEME                               |
      | DAVIS, HALEY AND HAND                     |
      | DIBBERT-ANKUNDING                         |
      | ERNSER GROUP                              |
      | HERMANN-WEHNER                            |
      | HILLL, HICKLE AND BODE                    |
      | JOHNSON GROUP                             |
      | KOELPIN LLC                               |
      | KOZEY-KEELING                             |
      | LANGWORTH, HETTINGER AND KUNDE            |
      | LEDNER-MAYER                              |
      | ORTIZ, STREICH AND HEANEY                 |
      | PARKER INC                                |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG  |
      | SCHILLER-SCHAMBERGER                      |
      | TORP GROUP                                |
      | WILLIAMSON GROUP                          |
