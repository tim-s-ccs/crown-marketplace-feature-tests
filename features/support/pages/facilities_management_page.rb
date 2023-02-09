module Pages
  class FacilitiesManagement < SitePrism::Page
    element :dashboard_caption, '#main-content > div.govuk-width-container > div:nth-child(1) > div > span'

    section :natification_banner, 'div.govuk-notification-banner' do
      element :header, 'div.govuk-notification-banner__header'
      element :content, 'div.govuk-notification-banner__content'
    end
  end
end
