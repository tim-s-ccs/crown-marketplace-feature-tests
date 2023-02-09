Then('{string} should have the status {string} in {string}') do |detail, status, section|
  expect(facilities_management_page.entering_requirements.send(section).send(detail).status.text).to eq status.downcase
end

Then('I should see the following seleceted services in the summary:') do |services_summary_table|
  services_summary = services_summary_table.raw.flatten
  service_summary_elements = facilities_management_page.all('table > tbody > tr > td')

  expect(service_summary_elements.length).to eq(services_summary.length)

  services_summary.zip(service_summary_elements).each do |expected, element|
    expect(element).to have_content(expected)
  end
end
