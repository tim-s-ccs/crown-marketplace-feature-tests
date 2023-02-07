@accessibility
Feature: Legal services - Suppliers - Accessibility

  Background: Login and then navigate to the select the lot you need page
    Given I sign in and navigate to the start page for the 'RM6240' framework in 'legal services'
    Then I am on the 'Do you work for central government?' page

  Scenario Outline: Results page - central govenrment - Lots 1 and 2
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is '<lot>'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Then the page should be axe clean

    Examples:
      | lot                               | service                 |
      | Lot 1 - Full service provision    | Information Technology  |
      | Lot 2 - General service provision | Employment              |

  Scenario Outline: Results page - non central govenrment - Lots 1 and 2
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is '<lot>'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Then the page should be axe clean

    Examples:
      | lot                               | service                 |
      | Lot 1 - Full service provision    | Information Technology  |
      | Lot 2 - General service provision | Employment              |

  Scenario Outline: Supplier page - central govenrment - Lots 1 and 2
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is '<lot>'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    And I click on the first supplier
    Then I am on the legal services rates page
    And the sub title is '<lot>'
    Then the page should be axe clean

    Examples:
      | lot                               | service                 |
      | Lot 1 - Full service provision    | Information Technology  |
      | Lot 2 - General service provision | Employment              |

  Scenario Outline: Supplier page - non central govenrment - Lots 1 and 2
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is '<lot>'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    And I click on the first supplier
    Then I am on the legal services rates page
    And the sub title is '<lot>'
    Then the page should be axe clean

    Examples:
      | lot                               | service                 |
      | Lot 1 - Full service provision    | Information Technology  |
      | Lot 2 - General service provision | Employment              |

  Scenario Outline: Download supplier list page - central govenrment - Lots 1 and 2
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is '<lot>'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    Then the page should be axe clean

    Examples:
      | lot                               | service                 |
      | Lot 1 - Full service provision    | Information Technology  |
      | Lot 2 - General service provision | Employment              |

  Scenario Outline: Download supplier list page - non central govenrment - Lots 1 and 2
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select '<lot>'
    And I click on 'Continue'
    And I am on the 'Select the legal services you need' page
    And the sub title is '<lot>'
    Given I check '<service>'
    And I click on 'Continue'
    Then I am on the 'Select the jurisdiction you need' page
    And the sub title is '<lot>'
    And I select 'England and Wales'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    Then the page should be axe clean

    Examples:
      | lot                               | service                 |
      | Lot 1 - Full service provision    | Information Technology  |
      | Lot 2 - General service provision | Employment              |

  Scenario: Results page - central govenrment - Lot 3
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Then the page should be axe clean

  Scenario: Supplier page - central govenrment - Lot 3
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    And I click on the first supplier
    Then I am on the legal services rates page
    And the sub title is 'Lot 3 - Transport rail legal services'
    Then the page should be axe clean

  Scenario: Download supplier list page - central govenrment - Lot 3
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Do you hold an approval secured from the Government Legal Department (GLD) to use this framework?' page
    And I select 'Yes'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    Then the page should be axe clean

  Scenario: Results page - non central govenrment - Lot 3
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Then the page should be axe clean

  Scenario: Supplier page - non central govenrment - Lot 3
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    And I click on the first supplier
    Then I am on the legal services rates page
    And the sub title is 'Lot 3 - Transport rail legal services'
    Then the page should be axe clean

  Scenario: Download supplier list page - non central govenrment - Lot 3
    And I select 'No'
    And I click on 'Continue'
    Then I am on the 'Select the lot you need' page
    And I select 'Lot 3 - Transport rail legal services'
    And I click on 'Continue'
    Then I am on the 'Supplier results' page
    And there are suppliers who can offer legal services and I count them
    Given I click on 'Download the supplier list'
    Then I am on the 'Download the supplier shortlist' page
    Then the page should be axe clean
