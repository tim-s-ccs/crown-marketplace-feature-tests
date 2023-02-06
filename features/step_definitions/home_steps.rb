Then('the cookie banner {string} visible') do |option|
  case option
  when 'is'
    expect(page.find('#cookie-options-container')).to be_visible
  when 'is not'
    expect(page).not_to have_css('#cookie-options-container')
  end
end

Then('the cookie banner shows I have {string} the cookies') do |option|
  case option
  when 'accepted'
    expect(page).to have_css('#cookies-accepted-container', visible: true)
    expect(page).to have_css('#cookies-rejected-container', visible: :hidden)
  when 'rejected'
    expect(page).to have_css('#cookies-rejected-container', visible: true)
    expect(page).to have_css('#cookies-accepted-container', visible: :hidden)
  end
end

Then('the cookies have been saved') do
  expect(cookie_settings['settings_viewed']).to be true
end

Then('the {string} cookies have been {string}') do |cookie, option|
  case option
  when 'accepted'
    expect(cookie_settings[COOKIE_TO_OPTION[cookie]]).to be true
  when 'rejected'
    expect(cookie_settings[COOKIE_TO_OPTION[cookie]]).to be false
  end
end

Then('I choose to {string} {string} cookies') do |option, cookie|
  case option
  when 'enable'
    page.find("##{cookie}_cookie_usage_true").choose
  when 'disable'
    page.find("##{cookie}_cookie_usage_false").choose
  end
end

Then('there are no header navigation links') do
  expect(home_page.navigation.links).to be_empty
end

Then('I should see the following navigation links:') do |navigation_links|
  home_page.navigation.links.zip(navigation_links.raw.flatten).each do |actual, expected|
    expect(actual).to have_content expected
  end
end

Then('the header navigation links {string} visible') do |option|
  case option
  when 'are'
    expect(home_page.navigation).to be_visible
  when 'are not'
    expect(home_page.navigation).to_not be_visible
  end
end

Given('I go to the not permitted page for {string}') do |service|
  visit "#{service.gsub(' ', '-')}/#{@framework}/not-permitted"
end

Given('I enter {string} for my email') do |email|
  fill_in 'email', with: email
end

Given('I enter {string} for the password') do |password|
  fill_in 'password01', with: password
end

Given('I enter {string} for the password confirmation') do |password_confirmation|
  fill_in 'password02', with: password_confirmation
end

COOKIE_TO_OPTION = {
  'ga' => 'google_analytics_enabled',
  'glassbox' => 'glassbox_enabled'
}.freeze

def cookie_settings
  JSON.parse(CGI.unescape(page.driver.browser.manage.cookie_named('crown_marketplace_cookie_options_v1')[:value]))
end
