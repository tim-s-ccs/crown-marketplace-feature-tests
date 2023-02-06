@accessibility
Feature: Supply Teachers - All agencies - Accessibility

  Background: Login and then navigate to the all agencies page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    Then I am on the 'What is your school looking for?' page
    And I select 'A list of all agencies'
    And I click on 'Continue'
    Then I am on the 'Find an agency' page
  
  Scenario: All agencies page
    Then the page should be axe clean
  
  Scenario: Agency details page
    Given I click on the first agency
    And the sub title is Agency details
    Then the page should be axe clean
