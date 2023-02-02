Feature: Forgot my password - Legal Services - RM6240 - Validations

  Scenario Outline: I forgot my password - email invalid
    When I go to the 'legal services' start page for 'RM6240'
    Then I am on the 'Find legal services for the wider public sector' page
    When I click on 'Start now'
    And I am on the 'Sign in to your legal services account' page
    When I click on 'I’ve forgotten my password'
    Then I am on the 'Reset password' page
    And I enter the following details into the form:
      | email | <value> |
    And I click on 'Send reset email'
    Then I should see the following error messages:
      | Enter your email address in the correct format, like name@example.com |

    Examples:
      | value           |
      |                 |
      | fake@email      |
      | fake email      |
