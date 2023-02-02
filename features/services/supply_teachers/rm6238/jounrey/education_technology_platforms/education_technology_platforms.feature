Feature: Supply Teachers - Education technology platforms

  Background: Navigate to the Education technology platform service page
    Given I sign in and navigate to the start page for the 'RM6238' framework in 'supply teachers'
    And I select 'A supplier that will provide a digital platform to create a pool of workers'
    And I click on 'Continue'
    Then I am on the 'Education technology platform service providers' page

  @skip-production
  Scenario: Education technology platform results
    And there are 4 managed service provider agencies
    And the managed service provider agencies are:
      | BOYLE, KOEPP AND TURNER |
      | BRAUN INC               |
      | CHRISTIANSEN INC        |
      | LEFFLER AND SONS        |
    And the contact details for the managed service provider 'LEFFLER AND SONS' are:
      | Kaitlin Hahn                  |
      | 128.218.6912 x969             |
      | sons.leffler.and@gislason.io  |
    And the education technology platform agency 'LEFFLER AND SONS' has the following rates:
      | Agency Management Fee: Daily supply worker (per worker, per day)              | £14.07  |
      | Agency Management Fee: Long term assignment (6 weeks+) (per worker, per day)  | £13.36  |
      | Nominated Worker                                                              | £12.66  |
      | Fixed Term                                                                    | 14.0%   |
    And I click on 'Back'
    Then I am on the 'What is your school looking for?' page

  @skip-non-production
  Scenario: Education technology platform results - Production
    And there are multiple managed service provider agencies
    And the first supplier has contact details
    And the first education technology platform agency has the correct types of rates:
      | Agency Management Fee: Daily supply worker (per worker, per day)              | £ |
      | Agency Management Fee: Long term assignment (6 weeks+) (per worker, per day)  | £ |
      | Nominated Worker                                                              | £ |
      | Fixed Term                                                                    | % |
    And I click on 'Back'
    Then I am on the 'What is your school looking for?' page
