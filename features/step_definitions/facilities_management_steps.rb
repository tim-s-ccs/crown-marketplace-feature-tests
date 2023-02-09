Given('I sign in without details for {string}') do |framework|
  initialize_current_user(:buyer_without_details)
  visit "/facilities-management/#{framework}/sign-in"
  update_banner_cookie(true)
  step 'I sign in'
  step "I am on the 'Manage your details' page"
end

Then('I am on the facilities management dashboard') do
  expect(facilities_management_page.dashboard_caption).to have_content('Your account')
  step "I am on the '#{current_user.email}' page"
end

Then('I can see the notification banner with text:') do |natification_banner_table|
  header_text = natification_banner_table.raw.flatten[0]
  content = natification_banner_table.raw.flatten[1..].join(' ')

  expect(facilities_management_page.natification_banner.header).to have_content(header_text)
  expect(facilities_management_page.natification_banner.content).to have_content(content)
end
