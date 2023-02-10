Feature: Facilities Management - Quick view - Select services
  
  Scenario: Service selection appears in basked
    Given I sign in and navigate to the start page for the 'RM3830' framework in 'facilities management'
    And I click on 'Quick view suppliers'
    Then I am on the 'Services' page
    And I show all sections
    Then the basket should say 'No services selected'
    And the remove all link should 'not be' visible
    When I check 'Building management system (BMS) maintenance'
    Then the basket should say '1 service selected'
    And the remove all link should 'not be' visible
    And the following items should appear in the facilities management basket:
      | Building management system (BMS) maintenance  |
    When I check the following items:
      | Water hygiene maintenance                     |
      | Pest control services                         |
      | High voltage (HV) and switchgear maintenance  |
      | Administrative support services               |
      | Courier booking and external distribution     |
      | Patrols (fixed or static guarding)            |
    Then the basket should say '7 services selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | Building management system (BMS) maintenance  |
      | Water hygiene maintenance                     |
      | Pest control services                         |
      | High voltage (HV) and switchgear maintenance  |
      | Administrative support services               |
      | Courier booking and external distribution     |
      | Patrols (fixed or static guarding)            |
    When I deselect the following items:
      | Building management system (BMS) maintenance  |
      | Administrative support services               |
    Then the basket should say '5 services selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | Water hygiene maintenance                     |
      | Pest control services                         |
      | High voltage (HV) and switchgear maintenance  |
      | Courier booking and external distribution     |
      | Patrols (fixed or static guarding)            |
    When I remove the following items from the facilities management basket:
      | Pest control services                     |
      | Courier booking and external distribution |
    Then the basket should say '3 services selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | Water hygiene maintenance                     |
      | High voltage (HV) and switchgear maintenance  |
      | Patrols (fixed or static guarding)            |
    When I click on 'Remove all'
    Then the basket should say 'No services selected'
    When I select all for 'Security services'
    Then the basket should say '12 services selected'
    And the remove all link should 'be' visible
    And the following items should appear in the facilities management basket:
      | Manned guarding service                           |
      | CCTV / alarm monitoring                           |
      | Control of access and security passes             |
      | Emergency response                                |
      | Patrols (fixed or static guarding)                |
      | Management of visitors and passes                 |
      | Reactive guarding                                 |
      | Additional security services                      |
      | Enhanced security requirements                    |
      | Key holding                                       |
      | Lock up / open up of buyer premises               |
      | Patrols (mobile via a specific visiting vehicle)  |
    When I remove the following items from the facilities management basket:
      | Enhanced security requirements |
    Then select all 'should not' be checked for 'Security services'
    When I check 'Enhanced security requirements'
    Then select all 'should' be checked for 'Security services'
    And I click on 'Continue'
    Then I am on the 'Regions' page
    And I click on the 'Return to services' back link
    Then I am on the 'Services' page
    And the following items should appear in the facilities management basket:
      | Manned guarding service                           |
      | CCTV / alarm monitoring                           |
      | Control of access and security passes             |
      | Emergency response                                |
      | Patrols (fixed or static guarding)                |
      | Management of visitors and passes                 |
      | Reactive guarding                                 |
      | Additional security services                      |
      | Enhanced security requirements                    |
      | Key holding                                       |
      | Lock up / open up of buyer premises               |
      | Patrols (mobile via a specific visiting vehicle)  |
