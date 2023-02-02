Feature: Sign in to my account - Legal Services - RM6240 - Validations

  Background: Navigate to the sign in page
    When I go to the 'legal services' start page for 'RM6240'
    Then I am on the 'Find legal services for the wider public sector' page
    When I click on 'Start now'
    And I am on the 'Sign in to your legal services account' page

  Scenario: I sign in to my account - missing parameters
    And I click on 'Sign in'
    Then I should see the following error messages:
      | You must provide your email address in the correct format, like name@example.com  |
      | You must provide your password                                                    |
      
    Scenario Outline: I sign in to my account - email format wrong
    And I enter the following details into the form:
      | Email     | <email>  |
      | Password  | ValidPassword1! |
    And I click on 'Sign in'
    Then I should see the following error messages:
      | You must provide your email address in the correct format, like name@example.com  |

    Examples:
      | email   |  
      | local@  |
      | @domain |
      | @       |
                                                 
  Scenario: I sign in to my account - cookies disabled
    And my cookies are disabled
    And I enter the following details into the form:
      | Email     | test@email.com  |
      | Password  | ValidPassword1! |
    And I click on 'Sign in'
    Then I should see the following error messages:
      | Your browser must have cookies enabled  |
