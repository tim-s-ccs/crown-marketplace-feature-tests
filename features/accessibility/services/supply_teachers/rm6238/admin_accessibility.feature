@accessibility
Feature: Supply Teachers - Admin - Accessibility

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6238' framework in 'supply teachers'
    Then I am on the 'Supply teachers and agency workers' page
  
  Scenario: Dashboard page
    Then the page should be axe clean

  Scenario: New upload page
    And I click on 'Set up upload session'
    Then I am on the 'Set up a new upload session' page
    Then the page should be axe clean

  Scenario Outline: Show page
    And I click on the first upload session with status '<status>'
    Then I am on the 'Upload session' page
    Then the page should be axe clean

    Examples:
      | status            |
      | Failed            |
      | Published on live |
