Given('I sign in without details for facilities management') do
  visit "/facilities-management/#{@framework}/sign-in"
  update_banner_cookie(true)
  fill_in 'email', with: ENV.fetch('BUYER_NO_DETAILS_EMAIL', nil)
  fill_in 'password', with: ENV.fetch('BUYER_NO_DETAILS_PASSWORD', nil)
  click_on 'Sign in'
  step 'I am on the "Manage your details" page'
end

Then('I am on the Your account page') do
  expect(page.find('#main-content > div.govuk-width-container > div:nth-child(1) > div > span')).to have_content('Your account')
end

Then('the following content should be displayed on the page:') do |table|
  page_text = page.find('#main-content').text

  table.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end

Then('I want to change my address') do
  facilities_management_page.find_address.change_address.click
end
