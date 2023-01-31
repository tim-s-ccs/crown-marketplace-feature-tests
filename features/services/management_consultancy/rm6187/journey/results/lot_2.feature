@skip-production
Feature: Management Consultancy - Lot 2 - Strategy and Policy - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 2 - Strategy and Policy'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 2 - Strategy and Policy'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '9' companies can provide consultants
    And the selected suppliers are:
      | BASHIRIAN, BODE AND STEUBER |
      | CRONA-ZIEME                 |
      | GUTMANN, LEMKE AND JOHNSTON |
      | HIRTHE INC                  |
      | LEDNER-MAYER                |
      | LUEILWITZ-WAELCHI           |
      | PFEFFER INC                 |
      | SCHUPPE INC                 |
      | WILLIAMSON GROUP            |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Business case development'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '29' companies can provide consultants
    And the selected suppliers are:
      | BASHIRIAN, BODE AND STEUBER               |
      | BOEHM-JENKINS                             |
      | CRONA-ZIEME                               |
      | FARRELL AND SONS                          |
      | FISHER-DECKOW                             |
      | GRAHAM, BREKKE AND HAMILL                 |
      | GRIMES-KUHLMAN                            |
      | GUTMANN, LEMKE AND JOHNSTON               |
      | HAAG AND SONS                             |
      | HARTMANN-LEGROS                           |
      | HARVEY-COLLINS                            |
      | HILLL, HICKLE AND BODE                    |
      | HIRTHE INC                                |
      | HODKIEWICZ LLC                            |
      | LEBSACK, KOVACEK AND GOYETTE              |
      | LEDNER-MAYER                              |
      | LEGROS, LANGOSH AND MEDHURST              |
      | LUEILWITZ-WAELCHI                         |
      | NICOLAS AND SONS                          |
      | PARISIAN AND SONS                         |
      | PFEFFER INC                               |
      | ROBEL GROUP                               |
      | RODRIGUEZ AND SONS                        |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG  |
      | SCHILLER-SCHAMBERGER                      |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '29' companies can provide consultants
    And the selected suppliers are:
      | SCHMIDT, MARQUARDT AND HAMMES |
      | SCHUPPE INC                   |
      | STOLTENBERG LLC               |
      | WILLIAMSON GROUP              |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '29' companies can provide consultants
    And the selected suppliers are:
      | BASHIRIAN, BODE AND STEUBER               |
      | BOEHM-JENKINS                             |
      | CRONA-ZIEME                               |
      | FARRELL AND SONS                          |
      | FISHER-DECKOW                             |
      | GRAHAM, BREKKE AND HAMILL                 |
      | GRIMES-KUHLMAN                            |
      | GUTMANN, LEMKE AND JOHNSTON               |
      | HAAG AND SONS                             |
      | HARTMANN-LEGROS                           |
      | HARVEY-COLLINS                            |
      | HILLL, HICKLE AND BODE                    |
      | HIRTHE INC                                |
      | HODKIEWICZ LLC                            |
      | LEBSACK, KOVACEK AND GOYETTE              |
      | LEDNER-MAYER                              |
      | LEGROS, LANGOSH AND MEDHURST              |
      | LUEILWITZ-WAELCHI                         |
      | NICOLAS AND SONS                          |
      | PARISIAN AND SONS                         |
      | PFEFFER INC                               |
      | ROBEL GROUP                               |
      | RODRIGUEZ AND SONS                        |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG  |
      | SCHILLER-SCHAMBERGER                      |

  Scenario: Going back from a supplier
    And I click on 'WILLIAMSON GROUP'
    Then I am on the 'WILLIAMSON GROUP' page
    And the sub title is 'MCF3 lot 2 - Strategy and Policy'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '9' companies can provide consultants
    And the selected suppliers are:
      | BASHIRIAN, BODE AND STEUBER |
      | CRONA-ZIEME                 |
      | GUTMANN, LEMKE AND JOHNSTON |
      | HIRTHE INC                  |
      | LEDNER-MAYER                |
      | LUEILWITZ-WAELCHI           |
      | PFEFFER INC                 |
      | SCHUPPE INC                 |
      | WILLIAMSON GROUP            |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '9' companies can provide consultants
    And the selected suppliers are:
      | BASHIRIAN, BODE AND STEUBER |
      | CRONA-ZIEME                 |
      | GUTMANN, LEMKE AND JOHNSTON |
      | HIRTHE INC                  |
      | LEDNER-MAYER                |
      | LUEILWITZ-WAELCHI           |
      | PFEFFER INC                 |
      | SCHUPPE INC                 |
      | WILLIAMSON GROUP            |
