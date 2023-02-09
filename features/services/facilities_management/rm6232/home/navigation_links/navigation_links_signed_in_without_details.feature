Feature: Facilities Management - Navigation links when signed in - without buyer details

  Background: I navigate to manage my details
    Given I sign in without details for 'RM6232'

  Scenario: Buyer details - Sign out
    And I should see the following navigation links:
      | Sign out    |
    And I click on 'Sign out'
    And I am on the 'Sign in to your account' page

  Scenario: Buyer details - Add address - Sign out
    And I enter the following details into the form:
      | Postcode  | SW11AA  |
    And I click on 'Find address'
    And I click on 'Enter address manually, if you can’t find address'
    Then I am on the 'Add address' page
    And I should see the following navigation links:
      | Sign out    |
    And I click on 'Sign out'
    And I am on the 'Sign in to your account' page
