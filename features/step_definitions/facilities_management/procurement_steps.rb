Then('I enter {string} into the contract name field') do |contract_name|
  fill_in 'Enter a name or reference to save this search.', with: combine_contract_name_with_uuid(contract_name)
end

Then('the procurement {string} is on the dashboard') do |contract_name|
  expect(facilities_management_page).to have_link(combine_contract_name_with_uuid(contract_name))
end

Then('the procurement {string} should have the state {string}') do |contract_name, status|
  expect(facilities_management_page.find('th', text: combine_contract_name_with_uuid(contract_name)).find(:xpath, '../td[3]')).to have_content(status)
end

Then('the contract name is shown to be {string}') do |contract_name|
  expect(facilities_management_page.procurement.contract_name.text).to eq combine_contract_name_with_uuid(contract_name)
end

Then('I click on the {string} procurement') do |contract_name|
  click_on combine_contract_name_with_uuid(contract_name)
end

Given('I have a procurement with the name {string}') do |contract_name|
  current_url_to_revisit = current_url

  step "I enter '#{contract_name}' into the contract name field"
  step "I click on 'Save and continue'"
  step "I am on the 'What happens next' page"

  visit current_url_to_revisit
  step "I am on the 'Quick view results' page"
end

def combine_contract_name_with_uuid(contract_name)
  "#{contract_name} #{ENV.fetch('TEST_RUN_ID')}"
end
