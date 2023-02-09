module Pages
  class Journey < SitePrism::Page
    element :sub_title, :xpath, '//h1/../span'
    elements :service_selection, '#selection-checkboxes label'

    section :basket, '#css-list-basket' do
      elements :selection, 'ul > li > span'
      elements :facilities_management_selection, 'ul > li > div:nth-of-type(2)'
      element :selection_count, 'div > h2'
      element :remove_all, '#removeAll'
    end

    section :selection, '#selection-checkboxes' do
      elements :checkboxes, '.govuk-checkboxes__input'
    end

    element :number_of_companies, '#main-content > div.govuk-grid-row > div > p'
    element :number_of_suppliers, '#main-content > div.govuk-grid-row > div > div:nth-child(3) > div > p'

    elements :suppliers, '.ccs-results-list a'

    section :supplier_rates_table, 'table tbody' do
      sections :rows, 'tr' do
        element :rate, 'td:nth-of-type(1)'
        element :hourly_rate, 'td:nth-of-type(1)'
        element :daily_rate, 'td:nth-of-type(2)'
        element :monthly_rate, 'td:nth-of-type(3)'
      end
    end

    elements :contact_details, '.ccs-contact-details dd'

    element :day_rate_page_title, '#main-content > div:nth-child(3) > div.govuk-grid-column-two-thirds.govuk-\!-padding-right-8 > h2'
  end
end
