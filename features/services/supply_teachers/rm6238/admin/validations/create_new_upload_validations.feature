@skip-production
Feature: Supply Teachers - Admin - Create new upload - Validations

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6238' framework in 'supply teachers'
    Then I am on the 'Supply teachers and agency workers' page
    And I click on 'Set up upload session'
    Then I am on the 'Set up a new upload session' page

  Scenario: No files uploaded
    And I click on 'Upload spreadsheets'
    Then I should see the following error messages:
      | Upload at least one file  |

  Scenario: Incorrect extension uploaded
    And I select the file 'features/services/supply_teachers/rm6238/admin/validations/create_new_upload_validations.feature' to upload for 'Current accredited suppliers'
    And I select the file 'features/services/supply_teachers/rm6238/admin/validations/create_new_upload_validations.feature' to upload for 'Geographical data all suppliers'
    And I select the file 'features/services/supply_teachers/rm6238/admin/validations/create_new_upload_validations.feature' to upload for 'Master vendor contacts'
    And I select the file 'features/services/supply_teachers/rm6238/admin/validations/create_new_upload_validations.feature' to upload for 'Education technology platform contacts'
    And I select the file 'features/services/supply_teachers/rm6238/admin/validations/create_new_upload_validations.feature' to upload for 'Pricing for tool'
    And I select the file 'features/services/supply_teachers/rm6238/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier lookup'
    And I click on 'Upload spreadsheets'
    Then I should see the following error messages:
      | The 'Current accredited suppliers' file must be an XLSX           |
      | The 'Geographical data all suppliers' file must be an XLSX        |
      | The 'Master vendor contacts' file must be a CSV                   |
      | The 'Education technology platform contacts' file must be a CSV   |
      | The 'Pricing for tool' file must be an XLSX                       |
      | The 'Supplier lookup' file must be a CSV                          |

  Scenario: Upload invalid spreadsheet
    And I select the file 'data/legal_services/rm6240/Supplier details.xlsx' to upload for 'Current accredited suppliers'
    And I click on 'Upload spreadsheets'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the supply teachers upload status to change from 'Processing files'
    And the status of the supply teachers upload is 'Failed'
    And the details for the failed supply teachers upload are:
      | sheet 'Lot 1 - Preferred Supplier List' not found |

  Scenario: Upload invalid spreadsheets
    And I select the file 'data/legal_services/rm6240/Supplier details.xlsx' to upload for 'Current accredited suppliers'
    And I select the file 'data/legal_services/rm6240/Supplier details.xlsx' to upload for 'Geographical data all suppliers'
    And I select the file 'data/supply_teachers/rm6238/Education technology platform contacts.csv' to upload for 'Master vendor contacts'
    And I select the file 'data/supply_teachers/rm6238/Master vendor contacts.csv' to upload for 'Education technology platform contacts'
    And I select the file 'data/legal_services/rm6240/Supplier details.xlsx' to upload for 'Pricing for tool'
    And I select the file 'data/supply_teachers/rm6238/Master vendor contacts.csv' to upload for 'Supplier lookup'
    And I click on 'Upload spreadsheets'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the supply teachers upload status to change from 'Processing files'
    And the status of the supply teachers upload is 'Failed'
    And the details for the failed supply teachers upload are:
      | sheet 'Branch details' not found  |
