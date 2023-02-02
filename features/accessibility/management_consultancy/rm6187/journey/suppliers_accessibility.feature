@accessibility
Feature: Management Consultancy - Suppliers - Accessibility

  Background: Login and then navigate to the supplier results page
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
    And there are suppliers who can offer consultants and I count them
  
  Scenario: Supplier results page
    Then the page should be axe clean

  Scenario: Supplier page
    And I click on the first supplier
    Then I am on the management consultancy day rates page
    And the sub title is 'MCF3 lot 1 - Business'
    And I click on the 'Back' back link
    Then the page should be axe clean

  Scenario: Download supplier list page
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    Then the page should be axe clean
