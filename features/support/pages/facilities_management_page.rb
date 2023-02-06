module Pages
  class FacilitiesManagement < SitePrism::Page
    section :find_address, 'div[data-module="find-address"]' do
      element :change_address, '#change-input-2'
    end
  end
end
