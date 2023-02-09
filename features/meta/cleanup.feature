# This is a meta feature and can be used to clear the test data
# after a suite of features have been run
@meta
Feature: Meta - Cleanup test data

  Scenario: Delete old RM3830 procurements
    Given I sign in and navigate to the start page for the 'RM3830' framework in 'facilities management'
    And I click on 'Continue a procurement'
    Then I am on the "Procurements dashboard" page
    And I delete all the procurements
