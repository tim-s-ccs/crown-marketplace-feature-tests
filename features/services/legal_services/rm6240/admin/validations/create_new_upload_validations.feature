@skip-production
Feature: Legal Services - Admin - Create new upload - Validations

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6240' framework in 'legal services'
    Then I am on the 'Manage supplier data' page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  Scenario: No files uploaded
    And I click on 'Upload data'
    Then I should see the following error messages:
      | Select the 'Supplier details' file                  |
      | Select the 'Supplier rate cards' file               |
      | Select the 'Supplier lot 1 service offerings' file  |
      | Select the 'Supplier lot 2 service offerings' file  |
      | Select the 'Supplier lot 3 service offerings' file  |

  Scenario: Incorrect extension uploaded
    And I select the file 'features/services/legal_services/rm6240/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier details'
    And I select the file 'features/services/legal_services/rm6240/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier rate cards'
    And I select the file 'features/services/legal_services/rm6240/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier lot 1 service offerings'
    And I select the file 'features/services/legal_services/rm6240/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier lot 2 service offerings'
    And I select the file 'features/services/legal_services/rm6240/admin/validations/create_new_upload_validations.feature' to upload for 'Supplier lot 3 service offerings'
    And I click on 'Upload data'
    Then I should see the following error messages:
      | The 'Supplier details' file must be an XLSX                 |
      | The 'Supplier rate cards' file must be an XLSX              |
      | The 'Supplier lot 1 service offerings' file must be an XLSX |
      | The 'Supplier lot 2 service offerings' file must be an XLSX |
      | The 'Supplier lot 3 service offerings' file must be an XLSX |

  Scenario: Upload invalid spreadsheets
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier rate cards'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier lot 1 service offerings'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier lot 2 service offerings'
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier lot 3 service offerings'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 20 seconds for the upload to finish
    And the status of the upload is 'failed'
    And the details for the failed upload are:
      | The 'Supplier details' file is missing sheets                 | The 'Supplier details' file should have 1 sheet named 'All Suppliers'                       |
      | The 'Supplier rate cards' file is missing sheets              | The 'Supplier rate cards' file should have 7 sheets with the following names:               |
      |                                                               | 'Lot 1a - England & Wales', 'Lot 1b - Scotland', 'Lot 1c - Northern Ireland',               |
      |                                                               | 'Lot 2a - England & Wales', 'Lot 2b - Scotland', 'Lot 2c - Northern Ireland', 'Lot 3'       |
      | The 'Supplier lot 1 service offerings' file is missing sheets | The 'Supplier lot 1 service offerings' file should have 3 sheets with the following names:  |
      |                                                               | 'Lot 1a - England & Wales', 'Lot 1b - Scotland', 'Lot 1c - Northern Ireland'                |
      | The 'Supplier lot 2 service offerings' file is missing sheets | The 'Supplier lot 2 service offerings' file should have 3 sheets with the following names:  |
      |                                                               | 'Lot 2a - England & Wales', 'Lot 2b - Scotland', 'Lot 2c - Northern Ireland'                |
      | The 'Supplier lot 3 service offerings' file is missing sheets | The ''Supplier lot 3 service offerings' file should have 1 sheet named 'All regions'        |
