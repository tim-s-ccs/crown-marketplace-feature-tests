@mobile
Feature: Facilities Management - Headers are responsive

  Scenario: Signed in and the navigation links are responsive
    Given I sign in and navigate to the start page for the 'RM6232' framework in 'facilities management'
    Then I click on 'Search for suppliers'
    And I am on the 'Services' page
    And the header navigation links 'are not' visible
    Then I click on 'Menu'
    And the header navigation links 'are' visible
    Then I click on 'My account'
    And I am on the facilities management dashboard
