@file-download @skip-non-production @smoulder
Feature: Legal services - Non central governemnt - Results

  Background: Navigate to the select lot page
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    Then I am on the 'Do you work for central government?' page
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
  
  Scenario: Can view results of the services - Lot 1 - Full service provision
    And I select 'Lot 1 - Full service provision'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 1 - Full service provision'
    Given I check 'Information Technology'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is 'Lot 1 - Full service provision'
    And I select 'Northern Ireland'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    And I click on the first supplier
    Then I am on the legal services rates page
    And the sub title is 'Lot 1 - Full service provision'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of legal services that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of WPS Legal Services Suppliers' is downloaded with the 'xlsx' extension
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of legal services that I counted previously

  Scenario: Can view results of the services - Lot 2 - General service provision
    And I select 'Lot 2 - General service provision'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is 'Lot 2 - General service provision'
    Given I check 'Employment'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is 'Lot 2 - General service provision'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    And I click on the first supplier
    Then I am on the legal services rates page
    And the sub title is 'Lot 2 - General service provision'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of legal services that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of WPS Legal Services Suppliers' is downloaded with the 'xlsx' extension
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of legal services that I counted previously

  Scenario: Can view results of the services - Lot 3 - Transport rail legal services
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    And I click on the first supplier
    Then I am on the legal services rates page
    And the sub title is 'Lot 3 - Transport rail legal services'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of legal services that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the file 'Shortlist of WPS Legal Services Suppliers' is downloaded with the 'xlsx' extension
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of legal services that I counted previously
