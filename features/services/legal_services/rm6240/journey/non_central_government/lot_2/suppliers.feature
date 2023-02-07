Feature: Legal services - Non central governemnt - Lot 2 - Suppliers

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

  @skip-production
  Scenario: Check the supplier data - SME
    Given I click on 'LUETTGEN-RIPPIN'
    Then I am on the 'LUETTGEN-RIPPIN' page
    Then the supplier 'is' an SME
    And the 'Partner' hourly rate is '£209.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£189.00'
    And the 'Solicitor, Associate' hourly rate is '£179.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£164.00'
    And the 'Trainee' hourly rate is '£100.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And there is no LMP (Legal project manager) hourly rate
    And the contact details for the supplier are:
      | luettgen_rippin@breitenberg.name          |
      | 1-787-468-7842 x06663                     |
      | http://oconner-lind.com/modesto.stamm     |
      | 209 Boyle Drives, Lindgrenstad, UT 82401  |

  @skip-production
  Scenario: Check the supplier data - Non SME
    Given I click on 'FLATLEY GROUP'
    Then I am on the 'FLATLEY GROUP' page
    Then the supplier 'is not' an SME
    And the 'Partner' hourly rate is '£208.00'
    And the 'Senior Solicitor, Senior Associate' hourly rate is '£187.00'
    And the 'Solicitor, Associate' hourly rate is '£172.00'
    And the 'NQ Solicitor/Associate, Junior Solicitor/Associate' hourly rate is '£150.00'
    And the 'Trainee' hourly rate is '£100.00'
    And the 'Paralegal, Legal Assistant' hourly rate is '£90.00'
    And the 'LMP (Legal project manager)' hourly rate is '£187.00'
    And the contact details for the supplier are:
      | group_flatley@schmeler.io                           |
      | 1-340-696-9662 x7745                                |
      | http://abshire.com/ruthann.welch                    |
      | 87268 Barrows Station, Blockchester, IN 18873-6168  |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of WPS Legal Services Suppliers' is downloaded with the 'xlsx' extension
