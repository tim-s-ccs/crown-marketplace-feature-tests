Feature: Facilities Management - Quick view - Select regions

  Background: Navigate to the Services page
    Given I sign in and navigate to the start page for the 'RM3830' framework in 'facilities management'
    And I click on 'Quick view suppliers'
    Then I am on the 'Services' page
    And I show all sections
    And I check 'Building management system (BMS) maintenance'
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I show all sections

  Scenario: Region selection appears in basked
    Then the basket should say 'No regions selected'
    And the remove all link should 'not be' visible
    When I check 'Tees Valley and Durham'
    Then the basket should say '1 region selected'
    And the remove all link should 'not be' visible
    And the following items should appear in the facilities management basket:
      | Tees Valley and Durham (UKC1) |
    When I check the following items:
      | Essex                       |
      | Inner London - West         |
      | Inner London - East         |
      | Gwynedd                     |
      | East Lothian and Midlothian |
    Then the basket should say '6 regions selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | Tees Valley and Durham (UKC1)       |
      | Essex (UKH3)                        |
      | Inner London - West (UKI3)          |
      | Inner London - East (UKI4)          |
      | Gwynedd (UKL12)                     |
      | East Lothian and Midlothian (UKM23) |
    When I deselect the following items:
      | Tees Valley and Durham  |
      | Inner London - West     |
    Then the basket should say '4 regions selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | Essex (UKH3)                        |
      | Inner London - East (UKI4)          |
      | Gwynedd (UKL12)                     |
      | East Lothian and Midlothian (UKM23) |
    When I remove the following items from the facilities management basket:
      | Essex   |
      | Gwynedd |
    Then the basket should say '2 regions selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | Inner London - East (UKI4)          |
      | East Lothian and Midlothian (UKM23) |
    When I click on 'Remove all'
    Then the basket should say 'No regions selected'
    When I select all for 'East of England'
    Then the basket should say '3 regions selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | East Anglia (UKH1)                    |
      | Bedfordshire and Hertfordshire (UKH2) |
      | Essex (UKH3)                          |
    When I remove the following items from the facilities management basket:
      | Bedfordshire and Hertfordshire |
    Then select all 'should not' be checked for 'East of England'
    When I check 'Bedfordshire and Hertfordshire'
    Then select all 'should' be checked for 'East of England'
    And I click on 'Continue'
    Then I am on the 'Quick view results' page
    And I click on the 'Return to regions' back link
    Then I am on the 'Regions' page
    And the following items should appear in the facilities management basket:
      | East Anglia (UKH1)                    |
      | Bedfordshire and Hertfordshire (UKH2) |
      | Essex (UKH3)                          |
