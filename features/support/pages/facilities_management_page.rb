module Pages
  class FacilitiesManagement < SitePrism::Page
    class DetailSection < SitePrism::Section
      element :name, 'td:nth-of-type(1)'
      element :status, 'td:nth-of-type(2)'
    end

    class ContractDetailsSection < SitePrism::Section
      section 'Contract name', DetailSection, 'tr:nth-of-type(1)'
      section 'Estimated annual cost', DetailSection, 'tr:nth-of-type(2)'
      section 'Annual contract value', DetailSection, 'tr:nth-of-type(2)'
      section 'TUPE', DetailSection, 'tr:nth-of-type(3)'
      section 'Contract period', DetailSection, 'tr:nth-of-type(4)'
    end

    class ServicesAndBuildingsSection < SitePrism::Section
      section 'Services', DetailSection, 'tr:nth-of-type(1)'
      section 'Buildings', DetailSection, 'tr:nth-of-type(2)'
      section 'Assigning services to buildings', DetailSection, 'tr:nth-of-type(3)'
      section 'Service requirements', DetailSection, 'tr:nth-of-type(4)'
    end

    class SummarySection < SitePrism::Section
      element :summary, 'details > summary > span'
      elements :details, 'li'
    end

    class SuppliersList < SitePrism::Section
      elements :suppliers, 'tr'
    end

    element :dashboard_caption, '#main-content > div.govuk-width-container > div:nth-child(1) > div > span'

    section :notification_banner, 'div.govuk-notification-banner' do
      element :header, 'div.govuk-notification-banner__header'
      element :content, 'div.govuk-notification-banner__content'
    end

    section :quick_view, '#main-content' do
      element :quick_search_contract_name, 'form > div > div:nth-child(1) > div > span'

      section :requirements_list, '#requirements-list' do
        section :services, SummarySection, 'div > div > div[data-section="service"]'
        section :regions, SummarySection, 'div > div > div[data-section="region"]'
      end

      section :results_container, '#supplier-lot-list__container' do
        section :'1a', SuppliersList, 'div > div:nth-child(1) > table > tbody'
        section :'1b', SuppliersList, 'div > div:nth-child(2) > table > tbody'
        section :'1c', SuppliersList, 'div > div:nth-child(3) > table > tbody'
      end
    end

    section :procurement, '#main-content' do
      element :contract_name, 'div.govuk-body > div > span'
    end

    section :entering_requirements, '#main-content' do
      section 'Contract details', ContractDetailsSection, 'form > table:nth-of-type(1)'
      section 'Services and buildings', ServicesAndBuildingsSection, 'form > table:nth-of-type(2)'
    end
  end
end
