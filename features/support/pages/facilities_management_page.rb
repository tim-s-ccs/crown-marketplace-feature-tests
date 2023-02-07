module Pages
  class FacilitiesManagement < SitePrism::Page
    section :find_address, 'div[data-module="find-address"]' do
      element :change_address, '#change-input-2'
    end

    section :buyer_details, '#main-content' do
      element :Name, '#facilities_management_buyer_detail_full_name'
      element :'Job title', '#facilities_management_buyer_detail_job_title'
      element :'Telephone number', '#facilities_management_buyer_detail_telephone_number'
      element :'Organisation name', '#facilities_management_buyer_detail_organisation_name'
      element :'Organisation address', '#address-text'
    end

    section :sector, '#central_government-form-group' do
      element :'Central government', '#facilities_management_buyer_detail_central_government_true'
      element :'Wider public sector', '#facilities_management_buyer_detail_central_government_false'
    end

    element :postcode_error_message, '#organisation_address_postcode-error'
    element :change_address, '#change-input-2'
  end
end
