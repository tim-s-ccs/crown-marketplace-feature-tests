Feature: Sign in to my account - Management Consultancy - RM6187 - Validations

  Background: Navigate to the sign in page
    When I go to the 'management consultancy' start page for 'RM6187'
    Then I am on the 'Find management consultants' page
    When I click on 'Start now'
    And I am on the 'Sign in to your management consultancy account' page

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
