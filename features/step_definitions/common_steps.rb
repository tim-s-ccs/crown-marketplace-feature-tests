Given('I sign in and navigate to the start page for the {string} framework in {string}') do |framework, service|
  start_page_title = ''

  case service
  when 'legal services'
    start_page_title = 'Do you work for central government?'
    visit "/legal-services/#{framework}/sign-in"
  when 'management consultancy'
    start_page_title = 'Important changes to how you access Management Consultancy Framework Three'
    visit "/management-consultancy/#{framework}/sign-in"
  when 'supply teachers'
    start_page_title = 'What is your school looking for?'
    visit "/supply-teachers/#{framework}/sign-in"
  end

  update_banner_cookie(true)
  fill_in 'email', with: ENV.fetch('BUYER_EMAIL', nil)
  fill_in 'password', with: ENV.fetch('BUYER_PASSWORD', nil)
  click_on 'Sign in'
  step "I am on the '#{start_page_title}' page"
end

When('I go to the {string} start page for {string}') do |service, framework|
  case service
  when 'legal services'
    visit "/legal-services/#{framework}"
  when 'management consultancy'
    visit "/management-consultancy/#{framework}"
  when 'supply teachers'
    visit "/supply-teachers/#{framework}"
  end
end

Given('I sign in as an admin for the {string} framework in {string}') do |framework, service|
  admin_dashboard_title = ''

  case service
  when 'legal services'
    admin_dashboard_title = 'Manage supplier data'
    visit "/legal-services/#{framework}/admin/sign-in"
  when 'management consultancy'
    admin_dashboard_title = 'Manage supplier data'
    visit "/management-consultancy/#{framework}/admin/sign-in"
  when 'supply teachers'
    admin_dashboard_title = 'Supply teachers and agency workers'
    visit "/supply-teachers/#{framework}/admin/sign-in"
  end

  update_banner_cookie(true)
  fill_in 'email', with: ENV.fetch('ADMIN_EMAIL', nil)
  fill_in 'password', with: ENV.fetch('ADMIN_PASSWORD', nil)
  click_on 'Sign in'
  step "I am on the '#{admin_dashboard_title}' page"
end

When('I go to {string}') do |uri|
  visit uri
end

Then('I am on the {string} page') do |title|
  expect(page.find('h1')).to have_content(title)
rescue NoMethodError
  expect(page.find('h1')).to have_content(title)
end

Then('the caption is {string}') do |caption|
  expect(page.find('span[class*=govuk-caption]')).to have_content(caption)
end

When('I click on {string}') do |button_text|
  click_on(button_text)
end

Then('I sign in') do
  fill_in 'email', with: ENV.fetch('BUYER_EMAIL', nil)
  fill_in 'password', with: ENV.fetch('BUYER_PASSWORD', nil)
  click_on 'Sign in'
end

Then('I should see the following error messages:') do |table|
  expect(page).to have_css('div.govuk-error-summary')
  expect(page.find('.govuk-error-summary__list').find_all('a').map(&:text).reject(&:empty?)).to eq table.raw.flatten
end

Then('I enter the following details into the form:') do |table|
  table.raw.to_h.each do |field, value|
    fill_in field, with: value
  end
end

Given('I select {string}') do |item|
  choose item
end

Given('I check {string}') do |item|
  check item
end

When('I deselect the following items:') do |items|
  items.raw.flatten.each do |item|
    page.uncheck(item)
  end
end

Given('I click on the {string} back link') do |link_text|
  page.find('.govuk-back-link', text: link_text).click
end

Then('I click on the {string} button') do |button_text|
  page.find('.govuk-button', text: button_text).click
end

Then('the file {string} is downloaded with the {string} extension') do |filename, file_extension|
  download_file_name = DownloadHelpers.download_file_name

  expect(download_file_name).to start_with(filename)
  expect(download_file_name).to end_with(".#{file_extension}")
end

Then('the framework is {string}') do |framework|
  expect(page.current_path.split('/')[2]).to eq framework
end

Then('the unrecognised framework is {string}') do |framework|
  expect(home_page.unrecognised_framework.description).to have_content("The framework in the web address is '#{framework}'. Make sure the web address contains one of the listed frameworks.")
end

Then('I am on {string}') do |expected_path|
  expect(page.current_path).to eq expected_path
end

When('my cookies are disabled') do
  page.driver.browser.manage.delete_all_cookies
end

Then('I pause') do
  # byebug
  pending 'This step is used for debugging features'
end
