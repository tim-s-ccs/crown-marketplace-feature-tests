Feature: Management Consultancy - Suppliers

  Background: Login and then navigate to the supplier results page
    Given I sign in and navigate to the start page for the 'RM6187' framework in 'management consultancy'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    Given I select 'Lot 1 - Business'
    And I click on 'Continue'
    Then I am on the 'Select the services you need' page
    And the sub title is 'MCF3 lot 1 - Business'
    Given I select all the services
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And I should see that '22' companies can provide consultants
    And the selected suppliers are:
      | ABSHIRE, QUITZON AND HOWE                 |
      | BASHIRIAN, BODE AND STEUBER               |
      | BOGISICH, BAUMBACH AND KERTZMANN          |
      | BRUEN-WITTING                             |
      | CONSIDINE GROUP                           |
      | CRONA-ZIEME                               |
      | DAVIS, HALEY AND HAND                     |
      | DIBBERT-ANKUNDING                         |
      | ERNSER GROUP                              |
      | HERMANN-WEHNER                            |
      | HILLL, HICKLE AND BODE                    |
      | JOHNSON GROUP                             |
      | KOELPIN LLC                               |
      | KOZEY-KEELING                             |
      | LANGWORTH, HETTINGER AND KUNDE            |
      | LEDNER-MAYER                              |
      | ORTIZ, STREICH AND HEANEY                 |
      | PARKER INC                                |
      | RUNOLFSDOTTIR, SCHROEDER AND STOLTENBERG  |
      | SCHILLER-SCHAMBERGER                      |
      | TORP GROUP                                |
      | WILLIAMSON GROUP                          |

  @skip-production
  Scenario Outline: Check the supplier data
    Given I click on '<supplier>'
    Then I am on the '<supplier>' page
    Then the supplier '<sme>' an SME
    And the rate for the 'Analyst / Junior Consultant' is '<rate_1>'
    And the rate for the 'Consultant' is '<rate_2>'
    And the rate for the 'Senior Consultant / Engagement Manager / Project Lead' is '<rate_3>'
    And the rate for the 'Principal Consultant / Associate Director' is '<rate_4>'
    And the rate for the 'Managing Consultant / Director' is '<rate_5>'
    And the rate for the 'Partner' is '<rate_6>'
    And the contact details for the supplier are:
      | <contact_name>    |
      | <contact_email>   |
      | <contact_number>  |
      | <website>         |
      | <address>         |

    Examples:
      | supplier        | sme     | rate_1  | rate_2  | rate_3  | rate_4  | rate_5  | rate_6  | contact_name        | contact_email                     | contact_number      | website                         | address                                                 |
      | BRUEN-WITTING   | is not  | £360    | £400    | £450    | £600    | £1,200  | £1,500  | Mr. Phillis Schmidt | bruen_witting@kub-kris.io         | 1-662-003-4968 x255 | http://balistreri.co/young.wiza | 791 Maxie Landing, Jasonfurt, AZ 16479                  |
      | KOELPIN LLC     | is      | £500    | £600    | £700    | £800    | £1,500  | £1,900  | Ileen Turner        | koelpin.llc@gusikowski-durgan.org | 613.662.1799 x019   | http://schumm.org/ezra_blanda   | Suite 744 30858 Lynsey Fall, South Erin, OH 64135-3093  |
      |WILLIAMSON GROUP | is not  | £510    | £570    | £640    | £740    | £1,100  | £1,640  | Simonne Borer       | group_williamson@padberg-wiza.com |                     | http://hyatt.com/corey.windler  | 430 Kautzer Divide, Lake Lorriefurt, LA 54301-3074      |

  @file-download
  Scenario: Download the supplier spreadsheet
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Download supplier shortlist'
    Then the spreadsheet 'shortlist_of_management_consultancy_suppliers' is downloaded

  @file-download
  Scenario: Download the expression of interest template
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    And I click on 'Expression of interest template'
    Then the open document 'T1-Expression-of-Interest-2.odt' is downloaded
