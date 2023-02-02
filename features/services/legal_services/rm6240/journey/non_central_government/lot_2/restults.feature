@skip-production
Feature: Legal services - Non central governemnt - Lot 2 - Results

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    Then I am on the 'Do you work for central government?' page
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 2 - General service provision'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 2 - General service provision'
    When I check the following items:
      | Court of Protection |
      | Licensing           |
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is 'Lot 2 - General service provision'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '16' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER         |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | HESSEL-QUITZON                    |
      | HUELS-WELCH                       |
      | LUETTGEN-RIPPIN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | SCHNEIDER AND SONS                |
      | VEUM-LOWE                         |
      | WYMAN-O'CONNER                    |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Planning and Environment'
    When I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '34' suppliers can provide legal services
    And the selected legal service suppliers are:
    | BERNHARD, WEHNER AND ORN          |
    | BERNIER, BRUEN AND RENNER         |
    | BREKKE, HAMMES AND WINTHEISER     |
    | BRUEN, CARTWRIGHT AND RUTHERFORD  |
    | EBERT, BASHIRIAN AND MILLER       |
    | FLATLEY GROUP                     |
    | GOLDNER GROUP                     |
    | GOTTLIEB GROUP                    |
    | GRAHAM, REICHEL AND KULAS         |
    | GREENFELDER LLC                   |
    | HESSEL-QUITZON                    |
    | HOMENICK-O'KEEFE                  |
    | HUELS-WELCH                       |
    | HYATT, ZIEMANN AND EMARD          |
    | LUETTGEN-RIPPIN                   |
    | MACGYVER-SCHOEN                   |
    | MCCLURE LLC                       |
    | MORISSETTE-RENNER                 |
    | MOSCISKI, LABADIE AND REMPEL      |
    | NICOLAS-PFEFFER                   |
    | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
    | PFEFFER GROUP                     |
    | RIPPIN, SANFORD AND GOYETTE       |
    | SATTERFIELD-WHITE                 |
    | SCHNEIDER AND SONS                |
    | SHANAHAN, CARTWRIGHT AND SCHAEFER |
    | STEUBER, THOMPSON AND LANG        |
    | STRACKE GROUP                     |
    | THOMPSON AND SONS                 |
    | TORPHY LLC                        |
    | VEUM-LOWE                         |
    | WEISSNAT INC                      |
    | WYMAN-O'CONNER                    |
    | ZULAUF, LABADIE AND MCCULLOUGH    |

  Scenario: Jursidiction selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'Scotland'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '4' suppliers can provide legal services
    And the selected legal service suppliers are:
      | CRUICKSHANK, RUECKER AND SAWAYN |
      | FLATLEY GROUP                   |
      | HANSEN, REMPEL AND HEANEY       |
      | RIPPIN, SANFORD AND GOYETTE     |

  Scenario: Going back from a supplier
    And I click on 'GOLDNER GROUP'
    Then I am on the 'GOLDNER GROUP' page
    And the sub title is 'Lot 2 - General service provision'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '16' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER         |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | HESSEL-QUITZON                    |
      | HUELS-WELCH                       |
      | LUETTGEN-RIPPIN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | SCHNEIDER AND SONS                |
      | VEUM-LOWE                         |
      | WYMAN-O'CONNER                    |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '16' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER         |
      | BRUEN, CARTWRIGHT AND RUTHERFORD  |
      | EBERT, BASHIRIAN AND MILLER       |
      | FLATLEY GROUP                     |
      | GOLDNER GROUP                     |
      | GOTTLIEB GROUP                    |
      | HESSEL-QUITZON                    |
      | HUELS-WELCH                       |
      | LUETTGEN-RIPPIN                   |
      | MCCLURE LLC                       |
      | MORISSETTE-RENNER                 |
      | PAUCEK, BUCKRIDGE AND GULGOWSKI   |
      | PFEFFER GROUP                     |
      | SCHNEIDER AND SONS                |
      | VEUM-LOWE                         |
      | WYMAN-O'CONNER                    |
