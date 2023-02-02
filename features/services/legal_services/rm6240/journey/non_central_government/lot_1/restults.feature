@skip-production
Feature: Legal services - Non central governemnt - Lot 1 - Results

  Background: Navigate to start page and complete the journey
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    Then I am on the 'Do you work for central government?' page
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 1 - Full service provision'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 1 - Full service provision'
    When I check the following items:
      | Children and Vulnerable Adults  |
      | Corporate Law                   |
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is 'Lot 1 - Full service provision'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '10' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER   |
      | BOGAN, RODRIGUEZ AND SIPES  |
      | CORKERY-BLANDA              |
      | GOTTLIEB GROUP              |
      | HALEY-SCHOEN                |
      | HAUCK AND SONS              |
      | LUEILWITZ, JAST AND GLEASON |
      | PFEFFER GROUP               |
      | SATTERFIELD-LOCKMAN         |
      | VEUM-LOWE                   |

  Scenario: Service selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I click on the 'Back' back link
    Then I am on the 'Select the legal services you need' page
    And I deselect all the items
    Given I check 'Media Law'
    When I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '14' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER   |
      | BOGAN, RODRIGUEZ AND SIPES  |
      | FLATLEY GROUP               |
      | GREENFELDER LLC             |
      | HALEY-SCHOEN                |
      | HAUCK AND SONS              |
      | HODKIEWICZ INC              |
      | MACGYVER-SCHOEN             |
      | MCCLURE LLC                 |
      | PFEFFER GROUP               |
      | RATH-NICOLAS                |
      | RIPPIN, SANFORD AND GOYETTE |
      | SATTERFIELD-LOCKMAN         |
      | VEUM-LOWE                   |

  Scenario: Jursidiction selection changes the results
    Given I click on the 'Back' back link
    Then I am on the 'Select the jurisdiction you need' page
    And I select 'Northern Ireland'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '4' suppliers can provide legal services
    And the selected legal service suppliers are:
      | CORKERY-BLANDA                    |
      | GREENFELDER LLC                   |
      | NICOLAS-PFEFFER                   |
      | SHANAHAN, CARTWRIGHT AND SCHAEFER |

  Scenario: Going back from a supplier
    And I click on 'PFEFFER GROUP'
    Then I am on the 'PFEFFER GROUP' page
    And the sub title is 'Lot 1 - Full service provision'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '10' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER   |
      | BOGAN, RODRIGUEZ AND SIPES  |
      | CORKERY-BLANDA              |
      | GOTTLIEB GROUP              |
      | HALEY-SCHOEN                |
      | HAUCK AND SONS              |
      | LUEILWITZ, JAST AND GLEASON |
      | PFEFFER GROUP               |
      | SATTERFIELD-LOCKMAN         |
      | VEUM-LOWE                   |

  Scenario: Going back from downloading documents
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see that '10' suppliers can provide legal services
    And the selected legal service suppliers are:
      | BERNIER, BRUEN AND RENNER   |
      | BOGAN, RODRIGUEZ AND SIPES  |
      | CORKERY-BLANDA              |
      | GOTTLIEB GROUP              |
      | HALEY-SCHOEN                |
      | HAUCK AND SONS              |
      | LUEILWITZ, JAST AND GLEASON |
      | PFEFFER GROUP               |
      | SATTERFIELD-LOCKMAN         |
      | VEUM-LOWE                   |
