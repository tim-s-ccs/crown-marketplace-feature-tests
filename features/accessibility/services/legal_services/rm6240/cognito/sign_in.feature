@accessibility
Feature: Sign in to my account - Legal Services - RM6240 - Accessibility

  Scenario: Sign in page
    When I go to the 'legal services' start page for 'RM6240'
    Then I am on the 'Find legal services for the wider public sector' page
    When I click on 'Start now'
    And I am on the 'Sign in to your legal services account' page
    Then the page should be axe clean
