@skip-production
Feature: Management Consultancy - Lot 8 - Infrastructure including Transport - Results

  Background: Navigate to start page and select the lot
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 8 - Infrastructure including Transport'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 8 - Infrastructure including Transport'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '14' companies can provide consultants
    And the selected suppliers are:
      | CONSIDINE, MCDERMOTT AND HARTMANN |
      | CRONA-ZIEME                       |
      | DURGAN AND SONS                   |
      | DURGAN INC                        |
      | HILLL, HICKLE AND BODE            |
      | HIRTHE INC                        |
      | JOHNSON GROUP                     |
      | KUPHAL, CARTER AND DIETRICH       |
      | SCHADEN, O'CONNER AND HIRTHE      |
      | SCHAMBERGER, RYAN AND THIEL       |
      | SCHILLER-SCHAMBERGER              |
      | STIEDEMANN GROUP                  |
      | STRACKE, RATH AND HAGENES         |
      | ZIEME-ADAMS                       |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the services you need' page
    And I deselect all the items
    Given I check 'Public transport (including buses and parking)'
    When I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '33' companies can provide consultants
    And the selected suppliers are:
      | ALTENWERTH INC                    |
      | BARROWS AND SONS                  |
      | BERNHARD-GULGOWSKI                |
      | CARTER-BEATTY                     |
      | CHAMPLIN-TRANTOW                  |
      | CONSIDINE, MCDERMOTT AND HARTMANN |
      | CREMIN, ORN AND HAMMES            |
      | CRONA-ZIEME                       |
      | DOUGLAS GROUP                     |
      | DURGAN AND SONS                   |
      | DURGAN INC                        |
      | GERHOLD-RUNTE                     |
      | GOYETTE-KOEPP                     |
      | HESSEL AND SONS                   |
      | HILLL, HICKLE AND BODE            |
      | HIRTHE INC                        |
      | HUDSON LLC                        |
      | JENKINS INC                       |
      | JOHNSON GROUP                     |
      | KIEHN, BLICK AND FUNK             |
      | KONOPELSKI AND SONS               |
      | KOSS, WALSH AND WALSH             |
      | KUPHAL, CARTER AND DIETRICH       |
      | LANGWORTH-KEELING                 |
      | SCHADEN, O'CONNER AND HIRTHE      |
    And I click on 'Next'
    Then I am on the 'Supplier results' page
    And I should see that '33' companies can provide consultants
    And the selected suppliers are:
      | SCHAMBERGER, RYAN AND THIEL |
      | SCHILLER-SCHAMBERGER        |
      | SCHUPPE INC                 |
      | SHANAHAN LLC                |
      | STIEDEMANN GROUP            |
      | STRACKE, RATH AND HAGENES   |
      | VANDERVORT LLC              |
      | ZIEME-ADAMS                 |
    And I click on 'Previous'
    Then I am on the 'Supplier results' page
    And I should see that '33' companies can provide consultants
    And the selected suppliers are:
      | ALTENWERTH INC                    |
      | BARROWS AND SONS                  |
      | BERNHARD-GULGOWSKI                |
      | CARTER-BEATTY                     |
      | CHAMPLIN-TRANTOW                  |
      | CONSIDINE, MCDERMOTT AND HARTMANN |
      | CREMIN, ORN AND HAMMES            |
      | CRONA-ZIEME                       |
      | DOUGLAS GROUP                     |
      | DURGAN AND SONS                   |
      | DURGAN INC                        |
      | GERHOLD-RUNTE                     |
      | GOYETTE-KOEPP                     |
      | HESSEL AND SONS                   |
      | HILLL, HICKLE AND BODE            |
      | HIRTHE INC                        |
      | HUDSON LLC                        |
      | JENKINS INC                       |
      | JOHNSON GROUP                     |
      | KIEHN, BLICK AND FUNK             |
      | KONOPELSKI AND SONS               |
      | KOSS, WALSH AND WALSH             |
      | KUPHAL, CARTER AND DIETRICH       |
      | LANGWORTH-KEELING                 |
      | SCHADEN, O'CONNER AND HIRTHE      |

  Scenario: Going back from a supplier
    And I click on 'CRONA-ZIEME'
    Then I am on the 'CRONA-ZIEME' page
    And the sub title is 'MCF3 lot 8 - Infrastructure including Transport'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' companies can provide consultants
    And the selected suppliers are:
      | CONSIDINE, MCDERMOTT AND HARTMANN |
      | CRONA-ZIEME                       |
      | DURGAN AND SONS                   |
      | DURGAN INC                        |
      | HILLL, HICKLE AND BODE            |
      | HIRTHE INC                        |
      | JOHNSON GROUP                     |
      | KUPHAL, CARTER AND DIETRICH       |
      | SCHADEN, O'CONNER AND HIRTHE      |
      | SCHAMBERGER, RYAN AND THIEL       |
      | SCHILLER-SCHAMBERGER              |
      | STIEDEMANN GROUP                  |
      | STRACKE, RATH AND HAGENES         |
      | ZIEME-ADAMS                       |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '14' companies can provide consultants
    And the selected suppliers are:
      | CONSIDINE, MCDERMOTT AND HARTMANN |
      | CRONA-ZIEME                       |
      | DURGAN AND SONS                   |
      | DURGAN INC                        |
      | HILLL, HICKLE AND BODE            |
      | HIRTHE INC                        |
      | JOHNSON GROUP                     |
      | KUPHAL, CARTER AND DIETRICH       |
      | SCHADEN, O'CONNER AND HIRTHE      |
      | SCHAMBERGER, RYAN AND THIEL       |
      | SCHILLER-SCHAMBERGER              |
      | STIEDEMANN GROUP                  |
      | STRACKE, RATH AND HAGENES         |
      | ZIEME-ADAMS                       |
