@accessibility
Feature: Sign in to my account - Management Consultancy - RM6187 - Accessibility

  Scenario: Sign in page
    When I go to the 'management consultancy' start page for 'RM6187'
    Then I am on the 'Find management consultants' page
    When I click on 'Start now'
    And I am on the 'Sign in to your management consultancy account' page
    Then the page should be axe clean
