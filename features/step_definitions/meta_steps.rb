Then('I delete all the procurements') do
  delete_links = page.all('a', text: 'Delete').map { |delete_link_element| delete_link_element[:href] }

  Timeout.timeout(300) do
    delete_links.each do |delete_link|
      visit delete_link
      step "I click on 'Confirm delete'"
      step "I am on the 'Procurements dashboard' page"
    end
  end

  expect(page.all('a', text: 'Delete')).to be_empty
  puts "\n#{delete_links.length} test procurements deleted\n"
end
