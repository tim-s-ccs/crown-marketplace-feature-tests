@skip-production
Feature: Management Consultancy - Admin - Create new upload

  Background: Navigate to admin upload page
    Given I sign in as an admin for the 'RM6187' framework in 'management consultancy'
    Then I am on the 'Manage supplier data' page
    And I click on 'Create a new data upload'
    Then I am on the 'New data upload' page

  @file-download
  Scenario: Can download template files
    And I click on 'Download spreadsheet templates'
    Then the file 'Supplier spreadsheet templates' is downloaded with the 'zip' extension

  Scenario: I can upload successfully
    And I select the file 'data/management_consultancy/rm6187/Supplier details.xlsx' to upload for 'Supplier details'
    And I select the file 'data/management_consultancy/rm6187/Supplier rate cards.xlsx' to upload for 'Supplier rate cards'
    And I select the file 'data/management_consultancy/rm6187/Supplier service offerings.xlsx' to upload for 'Supplier service offerings'
    And I click on 'Upload data'
    Then I am on the 'Upload session' page
    And I wait no longer than 50 seconds for the upload to finish
    And the status of the upload is 'published on live'

  @file-download
  Scenario Outline: Download files on dashboard
    And I click on "Return to 'Manage supplier data'"
    Then I am on the 'Manage supplier data' page
    When I download the '<filename>' file
    Then the file '<filename>' is downloaded with the 'xlsx' extension

    Examples:
      | filename                    |
      | Supplier details            |
      | Supplier rate cards         |
      | Supplier service offerings  |

  @file-download
  Scenario Outline: Download files on upload
    And I click on "Return to 'Manage supplier data'"
    Then I am on the 'Manage supplier data' page
    And I click on the first upload session with status 'published on live'
    Then I am on the 'Upload session' page
    And the status of the upload is 'published on live'
    When I download the '<filename>' file
    Then the file '<filename>' is downloaded with the 'xlsx' extension
    And I click on "Return to 'Manage supplier data'"
    Then I am on the 'Manage supplier data' page

    Examples:
      | filename                    |
      | Supplier details            |
      | Supplier rate cards         |
      | Supplier service offerings  |
