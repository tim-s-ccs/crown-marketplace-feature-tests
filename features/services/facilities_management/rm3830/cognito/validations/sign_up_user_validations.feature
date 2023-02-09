Feature: Facilities Management - Sign up user

  Background: navigate to create an account page
    Given I go to the 'facilities management' start page for 'RM3830'
    Then I am on the 'Find a facilities management supplier' page
    When I click on 'Start now'
    And I am on the 'Sign in to your account' page
    And I click on 'Create an account'
    Then I am on the 'Create an account' page

  @smoulder
  Scenario: Email validations
    Given I enter '<email>' for my email
    And I enter 'Passowrd1!' for the password
    And I enter 'Passowrd1!' for the password confirmation
    When I click on 'Create account'
    Then I should see the following error messages:
      | <error_message> |
    
    Examples:
      | email                       | error_message                                                       |
      |                             | Enter an email address in the correct format, like name@example.com |
      | Test@crowncommercial.gov.uk | Email address cannot contain any capital letters                    |

  @smoulder
  Scenario: Not on allow list
    Given I enter 'test@tmail.com' for my email
    And I enter 'Passowrd1!' for the password
    And I enter 'Passowrd1!' for the password confirmation
    When I click on 'Create account'
    Then I am on the 'You must use a public sector email address' page

  Scenario Outline: Password validations
    Given I enter 'test@crowncommercial.gov.uk' for my email
    And I enter '<password>' for the password
    And I enter '<password>' for the password confirmation
    When I click on 'Create account'
    Then I should see the following error messages:
      | <error_message> |

    Examples:
      | password    | error_message                             |
      | Pass!1      | Password must be 8 characters or more     |
      | password1!  | Password must include a capital letter    |
      | Password1   | Password must include a special character |
      | Password!   | Password must include a number            |

  Scenario: Password blank
    Given I enter 'test@crowncommercial.gov.uk' for my email
    And I enter '' for the password
    And I enter '' for the password confirmation
    When I click on 'Create account'
    Then I should see the following error messages:
      | Enter a password    |
      | Enter your password |

  Scenario: Password confirmation doesn't match
    Given I enter 'test@crowncommercial.gov.uk' for my email
    And I enter 'Password1!' for the password
    And I enter 'ValidPassw0rd!' for the password confirmation
    When I click on 'Create account'
    Then I should see the following error messages:
      | Passwords don't match |