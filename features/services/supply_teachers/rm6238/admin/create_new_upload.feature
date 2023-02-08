@skip-production
Feature: Supply Teachers - Admin - Create new upload

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6238' framework in 'supply teachers'
    Then I am on the 'Supply teachers and agency workers' page
    And I click on 'Set up upload session'
    Then I am on the 'Set up a new upload session' page

  Scenario: I can upload multiple successfully and publish
    And I select the file 'data/supply_teachers/rm6238/Current accredited suppliers.xlsx' to upload for 'Current accredited suppliers'
    And I select the file 'data/supply_teachers/rm6238/Geographical data all suppliers.xlsx' to upload for 'Geographical data all suppliers'
    And I select the file 'data/supply_teachers/rm6238/Master vendor contacts.csv' to upload for 'Master vendor contacts'
    And I select the file 'data/supply_teachers/rm6238/Education technology platform contacts.csv' to upload for 'Education technology platform contacts'
    And I select the file 'data/supply_teachers/rm6238/Pricing for tool.xlsx' to upload for 'Pricing for tool'
    And I select the file 'data/supply_teachers/rm6238/Supplier lookup.csv' to upload for 'Supplier lookup'
    And I click on 'Upload spreadsheets'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the supply teachers upload status to change from 'Processing files'
    And the status of the supply teachers upload is 'Waiting to publish'
    And I click on 'Publish to live service'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the supply teachers upload status to change from 'Publishing files'
    And the status of the supply teachers upload is 'Published on live'

  Scenario: I can upload single successfully and cancel
    And I select the file 'data/supply_teachers/rm6238/Current accredited suppliers.xlsx' to upload for 'Current accredited suppliers'
    And I click on 'Upload spreadsheets'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the supply teachers upload status to change from 'Processing files'
    And the status of the supply teachers upload is 'Waiting to publish'
    And I click on 'Cancel session'
    Then I am on the 'Upload session' page
    And the status of the supply teachers upload is 'Cancelled session'

  Scenario: I can upload single successfully and cancel
    And I select the file 'data/supply_teachers/rm6238/Current accredited suppliers.xlsx' to upload for 'Current accredited suppliers'
    And I click on 'Upload spreadsheets'
    Then I am on the 'Upload session' page
    And I click on 'Delete session'
    Then I am on the 'Supply teachers and agency workers' page

  Scenario: New upload will cancel previous incomplete session
    And I select the file 'data/supply_teachers/rm6238/Current accredited suppliers.xlsx' to upload for 'Current accredited suppliers'
    And I click on 'Upload spreadsheets'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the supply teachers upload status to change from 'Processing files'
    And the status of the supply teachers upload is 'Waiting to publish'
    And I record the session name
    When I click on 'Return to manage supplier data'
    Then I am on the 'Supply teachers and agency workers' page
    And I click on 'Set up upload session'
    Then I am on the 'Set up a new upload session' page
    And I select the file 'data/supply_teachers/rm6238/Current accredited suppliers.xlsx' to upload for 'Current accredited suppliers'
    And I click on 'Upload spreadsheets'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the supply teachers upload status to change from 'Processing files'
    And the status of the supply teachers upload is 'Waiting to publish'
    When I click on 'Return to manage supplier data'
    Then I am on the 'Supply teachers and agency workers' page
    And I navigate to my recorded session page
    And the status of the supply teachers upload is 'Cancelled session'

  @file-download
  Scenario Outline: Download files on dashboard
    And I click on 'Return to manage supplier data'
    Then I am on the 'Supply teachers and agency workers' page
    When I download the '<filename>' file
    Then the file '<filename>' is downloaded with the '<extension>' extension

    Examples:
      | filename                                | extension |
      | Current accredited suppliers            | xlsx      |
      | Geographical data all suppliers         | xlsx      |
      | Master vendor contacts                  | csv       |
      | Education technology platform contacts  | csv       |
      | Pricing for tool                        | xlsx      |
      | Supplier lookup                         | csv       |

  @file-download
  Scenario Outline: Download files on upload
    And I click on 'Return to manage supplier data'
    Then I am on the 'Supply teachers and agency workers' page
    And I click on the first upload session with status 'Published on live'
    Then I am on the 'Upload session' page
    And the status of the supply teachers upload is 'Published on live'
    When I download the '<filename>' supply teachers file
    Then the file '<filename>' is downloaded with the '<extension>' extension
    And I click on 'Return to manage supplier data'
    Then I am on the 'Supply teachers and agency workers' page

    Examples:
      | filename                                | extension |
      | Current accredited suppliers            | xlsx      |
      | Geographical data all suppliers         | xlsx      |
      | Master vendor contacts                  | csv       |
      | Education technology platform contacts  | csv       |
      | Pricing for tool                        | xlsx      |
      | Supplier lookup                         | csv       |
