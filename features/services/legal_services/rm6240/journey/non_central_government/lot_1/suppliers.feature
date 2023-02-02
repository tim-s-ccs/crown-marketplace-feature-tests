Feature: Legal services - Non central governemnt - Lot 1 - Suppliers

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

  @skip-production
  Scenario: Check the supplier data - SME
    Given I click on 'VEUM-LOWE'
    Then I am on the 'VEUM-LOWE' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£195.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£175.00'
    And the 'Solicitor, Associate' hourly rate is '£155.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£135.00'
    And the 'Trainee' hourly rate is '£90.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And there is no LMP (Legal project manager) hourly rate
    And the contact details for the supplier are:
      | veum_lowe@lesch.name                  |
      | 397.718.2092 x159                     |
      | http://stanton.name/rory              |
      | 931 Gaston Fork, Alphaport, MS 97918  |

  @skip-production
  Scenario: Check the supplier data - Non SME
    Given I click on 'GOTTLIEB GROUP'
    Then I am on the 'GOTTLIEB GROUP' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£208.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£187.00'
    And the 'Solicitor, Associate' hourly rate is '£172.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£150.00'
    And the 'Trainee' hourly rate is '£100.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And the 'LMP (Legal project manager)' hourly rate is '£187.00'
    And the contact details for the supplier are:
      | group.gottlieb@prohaska-klein.net                     |
      | 916-413-6090                                          |
      | http://bauch-hudson.net/raul_bahringer                |
      | Apt. 599 77353 Dwayne Cove, Beckerstad, PA 76396-4000 |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the spreadsheet 'Shortlist of WPS Legal Services Suppliers.xlsx' is downloaded