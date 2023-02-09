Then('I show all sections') do
  step('I click on "Show all sections"')
end

Then('the following items should appear in the facilities management basket:') do |items|
  expect(journey_page.basket.facilities_management_selection.map(&:text)).to match_array(items.raw.flatten)
end

When('I remove the following items from the facilities management basket:') do |items|
  items.raw.flatten.each do |item|
    journey_page.basket.facilities_management_selection(text: item).first.find(:xpath, '../div/span/a').click
  end
end

When('I select all for {string}') do |item_group|
  page.find("[data-sectionname='#{item_group}']").find('input[name="section-checkbox_select_all"]').check
end

Then('select all {string} be checked for {string}') do |section, status|
  case status
  when 'should'
    expect(page.find("[data-sectionname='#{section}']").find('input[name="section-checkbox_select_all"]')).to be_checked
  when 'should not'
    expect(page.find("[data-sectionname='#{section}']").find('input[name="section-checkbox_select_all"]')).not_to be_checked
  end
end

Then('{int} {string} are slected') do |number, section|
  expect(facilities_management_page.quick_view.requirements_list.send(section.to_sym).summary).to have_content("#{number} selected")
end

Then('the following {string} are in the drop down:') do |section, items|
  facilities_management_page.quick_view.requirements_list.send(section.to_sym).summary.click

  expect(facilities_management_page.quick_view.requirements_list.send(section.to_sym).details.map(&:text)).to match(items.raw.flatten)
end

Then('the requirements {string} be visible') do |status|
  case status
  when 'should'
    expect(facilities_management_page.quick_view.requirements_list).to be_visible
  when 'should not'
    expect(facilities_management_page.quick_view.requirements_list).not_to be_visible
  end
end

Then('the contract name on the quick search results page is shown to be {string}') do |contract_name|
  expect(facilities_management_page.quick_view.quick_search_contract_name).to have_content contract_name
end
