module Pages
  class Admin < SitePrism::Page
    class AdminUploadIssuesRow < SitePrism::Section
      element :issue, 'td.govuk-table__cell:nth-child(1)'
      element :detail, 'td.govuk-table__cell:nth-child(2)'
    end

    element :upload_status, '#main-content > div:nth-child(2) > div > dl > div:nth-child(1) > dd > strong'

    sections :upload_issues_table, AdminUploadIssuesRow, '#main-content > div:nth-child(4) > div > table > tbody > tr'

    section :supply_teachers, '#main-content' do
      element :upload_status, 'div:nth-child(3) > div > dl > div:nth-child(1) > dd > strong'
      element :fail_reason, 'div:nth-child(3) > div > div > p'
    end
  end
end
