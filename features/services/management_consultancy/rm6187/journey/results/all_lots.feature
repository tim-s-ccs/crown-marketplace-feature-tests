@skip-non-production
Feature: Management Consultancy - Results

  Background: Navigate to the select lot page
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page

  Scenario: Can view results of the services - Lot 1 - Business
    Given I select 'Lot 1 - Business'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 1 - Business'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 1 - Business'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 2 - Strategy and Policy
    Given I select 'Lot 2 - Strategy and Policy'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 2 - Strategy and Policy'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 2 - Strategy and Policy'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 3 - Complex and Transformation
    Given I select 'Lot 3 - Complex and Transformation'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 3 - Complex and Transformation'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 3 - Complex and Transformation'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 4 - Finance
    Given I select 'Lot 4 - Finance'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 4 - Finance'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 4 - Finance'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 5 - HR
    Given I select 'Lot 5 - HR'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 5 - HR'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 5 - HR'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 6 - Procurement and Supply Chain
    Given I select 'Lot 6 - Procurement and Supply Chain'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 6 - Procurement and Supply Chain'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 6 - Procurement and Supply Chain'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 7 - Health, Social Care and Community
    Given I select 'Lot 7 - Health, Social Care and Community'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 7 - Health, Social Care and Community'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 7 - Health, Social Care and Community'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 8 - Infrastructure including Transport
    Given I select 'Lot 8 - Infrastructure including Transport'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 8 - Infrastructure including Transport'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 8 - Infrastructure including Transport'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously

  Scenario: Can view results of the services - Lot 9 - Environmental Sustainability and Socio-economic Development
    Given I select 'Lot 9 - Environmental Sustainability and Socio-economic Development'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 9 - Environmental Sustainability and Socio-economic Development'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer consultants and I count them
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 9 - Environmental Sustainability and Socio-economic Development'
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
    And I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on the 'Back' back link
    Then I am on the 'Supplier results' page
    And I should see the same number of consultants that I counted previously
