Then('I am on the Your account page') do
  expect(page.find('#main-content > div.govuk-width-container > div:nth-child(1) > div > span')).to have_content('Your account')
end

Then('the following content should be displayed on the page:') do |table|
  page_text = page.find('#main-content').text

  table.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end
