Then('I enter {string} for the {string}') do |value, field|
  fill_in field.gsub(' ', '_'),	with: value
end

Then('I enter {string} for the date') do |date|
  add_dates(:date_field, *date_options(date))
end

Given('I enter {string} for the {string} date') do |date, field|
  add_dates(field, *date_options(date))
end

Then('I enter a date {int} years and {int} months into the future') do |years, months|
  date = Time.zone.today + years.years + months.months

  add_dates(:date_field, *date.strftime('%d/%m/%Y').split('/'))
end

Then('I enter a date {int} and a half months into the future') do |months|
  date = Time.zone.today + months.months + 20.days

  add_dates(:date_field, *date.strftime('%d/%m/%Y').split('/'))
end

Then('I enter a date {int} years and {int} months into the past') do |years, months|
  date = Time.zone.today - years.years - months.months

  add_dates(:date_field, *date.strftime('%d/%m/%Y').split('/'))
end

Given('I enter a date {int} years and {int} months into the future for the {string} date') do |years, months, field|
  @dates ||= {}
  @dates[field] = Time.zone.today + years.years + months.months

  add_dates(field, *@dates[field].strftime('%d/%m/%Y').split('/'))
end

Then('the date I need to wait until is six months after {int} months ago in the {string}') do |months, option|
  date_text = (Time.zone.today - months.months + 6.months).strftime('%d %b %Y')

  case option
  when 'title'
    expect(supply_teachers_page.find('h1')).to have_content("If you wait and do not employ until #{date_text}, you won't be charged a transfer fee.")
  when 'panel'
    expect(supply_teachers_page.panel.body).to have_content("if you choose to hire the worker before #{date_text}")
  end
end

Then('there are {int} agencies') do |number_of_agencies|
  expect(supply_teachers_page.agency_results.number_of_agencies).to have_content("#{number_of_agencies} #{'result'.pluralize(number_of_agencies)}")
end

Then('there are multiple agencies and I count them') do
  @number_of_agencies = supply_teachers_page.agency_results.number_of_agencies.text.match(/\d+/).to_s.to_i

  expect(@number_of_agencies).to be_positive
end

Then('there is an equal or lower number of agencies') do
  previous_number_of_agencies = @number_of_agencies
  @number_of_agencies = supply_teachers_page.agency_results.number_of_agencies.text.match(/\d+/).to_s.to_i

  expect(@number_of_agencies).to be <= previous_number_of_agencies
end

Then('there is an equal or greater number of agencies') do
  previous_number_of_agencies = @number_of_agencies
  @number_of_agencies = supply_teachers_page.agency_results.number_of_agencies.text.match(/\d+/).to_s.to_i

  expect(@number_of_agencies).to be >= previous_number_of_agencies
end

Then('there are multiple agencies and I record them') do
  @current_agencies = collect_agencies

  expect(@current_agencies.length).to be_positive
end

Then('there are multiple agencies and I record the rates') do
  @current_agency_rates = collect_agency_rates
end

Then('there are multiple agencies and the rates are greater') do
  previous_number_of_agencies = @current_agency_rates
  @current_agency_rates = collect_agency_rates

  expect(previous_number_of_agencies.length).to eq @current_agency_rates.length

  previous_number_of_agencies.zip(@current_agency_rates).each do |old_rates, new_rates|
    expect(old_rates[0]).to eq new_rates[0]
    expect(old_rates[1]).to be < new_rates[1]
  end
end

Then('there are multiple agencies and the rates are the same') do
  previous_number_of_agencies = @current_agency_rates
  @current_agency_rates = collect_agency_rates

  expect(previous_number_of_agencies.length).to eq @current_agency_rates.length

  previous_number_of_agencies.zip(@current_agency_rates).each do |old_rates, new_rates|
    expect(old_rates[0]).to eq new_rates[0]
    expect(old_rates[1]).to eq new_rates[1]
  end
end

Then('for agency number {int} I should record the rate for the finders fee') do |agency_number|
  @current_rate = find_supplier_record_rate_by_number(agency_number)
end

Then('for agency number {int} I should see rate is lower for the finders fee') do |agency_number|
  previous_rate = @current_rate
  @current_rate = find_supplier_record_rate_by_number(agency_number)

  expect(previous_rate).to be > @current_rate
end

Then('for agency number {int} I should see rate is greater for the finders fee') do |agency_number|
  previous_rate = @current_rate
  @current_rate = find_supplier_record_rate_by_number(agency_number)

  expect(previous_rate).to be < @current_rate
end

Then('there are different agencies shown') do
  agencies_on_page = collect_agencies

  expect(agencies_on_page.length).to be_positive
  expect(agencies_on_page).not_to eq @current_agencies
end

Then('there are the same agencies as before') do
  agencies_on_page = collect_agencies

  expect(agencies_on_page).to eq @current_agencies
end

Given('I click on agency number {int}') do |agency_number|
  supplier_record = find_supplier_record_by_number(agency_number)
  @supplier_name = supplier_record.find('h2').text

  supplier_record.first('a').click
end

Then('I am on that agencies page') do
  step "I am on the '#{@supplier_name}' page"
end

Then('I enter the rate {string} for the supplier {string}') do |rate, agency_name|
  rate_input = find_supplier_record(agency_name).find('input')

  rate_input.fill_in with: rate
  rate_input.native.send_keys(:return)
  wait_for_ajax
end

Then('I enter the rate {string} for supplier number {int}') do |rate, agency_number|
  rate_input = find_supplier_record_by_number(agency_number).find('input')

  rate_input.fill_in with: rate
  rate_input.native.send_keys(:return)
  wait_for_ajax
end

Then('I should see the error message {string} for {string}') do |error_message, agency_name|
  error_message_element = find_supplier_record(agency_name).find('.govuk-error-message')

  expect(error_message_element).to have_content(error_message)
  expect(error_message_element[:class]).not_to include('govuk-visually-hidden')
end

Then('I should see the error message {string} for supplier number {int}') do |error_message, agency_number|
  error_message_element = find_supplier_record_by_number(agency_number).find('.govuk-error-message')

  expect(error_message_element).to have_content(error_message)
  expect(error_message_element[:class]).not_to include('govuk-visually-hidden')
end

Then('the following agencies have no errors:') do |agency_names|
  agency_names.raw.flatten.each do |agency_name|
    error_message_element = find_supplier_record(agency_name).find('.govuk-error-message')

    expect(error_message_element[:class]).to include('govuk-visually-hidden')
  end
end

Then('only the following suppliers should have errors:') do |permitted_agencies_table|
  permitted_agencies = permitted_agencies_table.raw.flatten.map(&:to_i).compact

  supply_teachers_page.agency_results.suppliers.each.with_index(1) do |agency_element, index|
    error_message_element = agency_element.find('.govuk-error-message')

    if permitted_agencies.include? index
      expect(error_message_element[:class]).not_to include('govuk-visually-hidden')
    else
      expect(error_message_element[:class]).to include('govuk-visually-hidden')
    end
  end
end

Then('there are {int} managed service provider agencies') do |number_of_agencies|
  expect(supply_teachers_page.managed_service_providers.number_of_agencies).to have_content("#{number_of_agencies} agencies")
end

Then('there are multiple managed service provider agencies') do
  expect(supply_teachers_page.managed_service_providers.number_of_agencies.text.match(/\d+/).to_s.to_i).to be_positive
end

Then('the managed service provider agencies are:') do |agencies|
  agency_elements = supply_teachers_page.managed_service_providers.agencies
  agency_names = agencies.raw.flatten

  expect(agency_elements.length).to eq agency_names.length

  agency_elements.zip(agency_names).each do |actual, expected|
    expect(actual.find('h2')).to have_content expected
  end
end

Then('the contact details for the managed service provider {string} are:') do |agency_name, contact_details|
  agency_contact_details = supply_teachers_page.first('h2', text: agency_name).find(:xpath, '../p')
  expected_contact_details = contact_details.raw.flatten

  expect(agency_contact_details.find('.managed-service-provider-contact-details__name')).to have_content expected_contact_details[0]
  expect(agency_contact_details.find('.managed-service-provider-contact-details__telephone')).to have_content expected_contact_details[1]
  expect(agency_contact_details.find('.managed-service-provider-contact-details__email')).to have_content expected_contact_details[2]
end

Then('the first supplier has contact details') do
  agency_contact_details = supply_teachers_page.first('.agency-record > p')

  expect(agency_contact_details.find('.managed-service-provider-contact-details__name').text).to be_present
  expect(agency_contact_details.find('.managed-service-provider-contact-details__telephone').text).to be_present
  expect(agency_contact_details.find('.managed-service-provider-contact-details__email').text).to be_present
end

Then('the master vendor agency {string} has the following rates:') do |agency_name, raw_rates|
  rates = raw_rates.raw.to_h { |rate| [rate[0], { one_week: rate[1], twelve_weeks: rate[2], more_than_twelve_weeks: rate[3] }] }
  rates_table = supply_teachers_page.find('h2', text: agency_name).find(:xpath, '..').find('table.agency_rates > tbody')

  rates.each do |job_type, rate|
    rate_row = rates_table.find('th', text: job_type).find(:xpath, '..')

    expect(rate_row.find(:xpath, './td[1]')).to have_content(rate[:one_week])
    expect(rate_row.find(:xpath, './td[2]')).to have_content(rate[:twelve_weeks])
  end
end

Then('the first master vendor agency has the correct type of rates:') do |rate_heading_and_type|
  rates_table = supply_teachers_page.first('.agency-record > table.agency_rates > tbody')

  rate_heading_and_type.raw.each do |job_type, rate_type|
    rate_row = rates_table.find('th', text: job_type).find(:xpath, '..')

    ['1', '2'].each do |row|
      check_rate_type(rate_row.find(:xpath, "./td[#{row}]").text, rate_type)
    end
  end
end

Then('the education technology platform agency {string} has the following rates:') do |agency_name, raw_rates|
  rates = raw_rates.raw
  rates_table = supply_teachers_page.find('h2', text: agency_name).find(:xpath, '../table/tbody')

  rates.each do |job_type, rate|
    rate_row = rates_table.find('th', text: job_type).find(:xpath, '..')

    expect(rate_row.find(:xpath, './td[1]')).to have_content(rate)
  end
end

Then('the first education technology platform agency has the correct types of rates:') do |rate_heading_and_type|
  rates_table = supply_teachers_page.first('.agency-record > table > tbody')

  rate_heading_and_type.raw.each do |job_type, rate_type|
    rate_row = rates_table.find('th', text: job_type).find(:xpath, '..')

    check_rate_type(rate_row.find(:xpath, './td[1]').text, rate_type)
  end
end

Then('a list of {int} agencies are shown') do |number_of_agencies|
  expect(supply_teachers_page.all_agencies.number_of_agencies).to have_content("There are #{number_of_agencies} agencies currently available")
end

Then('multiple agencies are shown and I count them') do
  expect(supply_teachers_page.all_agencies.number_of_agencies.text.match(/\d+/).to_s.to_i).to be_positive

  @number_of_agencies_on_screen = supply_teachers_page.all_agencies.agencies.count
end

Then('there is a reduced list in the number of agencies') do
  expect(supply_teachers_page.all_agencies.agencies.count).to be < @number_of_agencies_on_screen
end

Then('the origional list of agencies is shown') do
  expect(supply_teachers_page.all_agencies.agencies.count).to eq @number_of_agencies_on_screen
end

Then('I enter {string} for the agency search') do |agency_name|
  supply_teachers_page.supplier_search.input.fill_in with: "#{agency_name}\n"
  supply_teachers_page.supplier_search.search.click
end

Then('the listed agencies for agency results are:') do |raw_agency_name_and_branch|
  agencies = supply_teachers_page.agency_results.suppliers

  agency_name_and_branch = raw_agency_name_and_branch.raw.map { |agency| { name: agency[0], branch: agency[1] } }

  expect(agencies.length).to eq agency_name_and_branch.length

  agencies.zip(agency_name_and_branch).each do |actual, expected|
    expect(actual.find('h2')).to have_content expected[:name]
    expect(actual.find('.supplier-record__branch-name')).to have_content expected[:branch]
  end
end

Then('the listed agencies for all agencies are:') do |raw_agency_name|
  agencies = supply_teachers_page.all_agencies.agencies

  agency_names = raw_agency_name.raw.flatten

  expect(agencies.length).to eq agency_names.length

  agencies.zip(agency_names).each do |actual, expected|
    expect(actual.find('h2')).to have_content expected
  end
end

Then('the listed agencies with rates and distances are:') do |raw_agency_name_and_details|
  agencies = supply_teachers_page.agency_results.suppliers
  agency_name_and_details = raw_agency_name_and_details.raw.map { |agency| { name: agency[0], branch: agency[1], mark_up: agency[2], miles: agency[3] } }

  expect(agencies.length).to eq agency_name_and_details.length

  agencies.zip(agency_name_and_details).each do |actual, expected|
    expect(actual.find('h2')).to have_content expected[:name]
    expect(actual.find('.supplier-record__branch-name')).to have_content expected[:branch]
    expect(actual.find('.supplier-record__markup-rate')).to have_content expected[:mark_up]
    expect(actual.find('.supplier-record__distance')).to have_content expected[:miles]
  end
end

Then('the listed agencies with distances, fees and lengths are:') do |raw_agency_name_and_details|
  agencies = supply_teachers_page.agency_results.suppliers
  agency_name_and_details = raw_agency_name_and_details.raw.map do |agency|
    {
      name: agency[0],
      branch: agency[1],
      miles: agency[2],
      annual_salary: agency[3],
      term: agency[4],
      finders_fee: agency[5],
      rate: agency[6]
    }
  end

  expect(agencies.length).to eq agency_name_and_details.length

  agencies.zip(agency_name_and_details).each do |actual, expected|
    expect(actual.find('h2')).to have_content expected[:name]
    expect(actual.find('.supplier-record__branch-name')).to have_content expected[:branch]
    expect(actual.find('.supplier-record__distance')).to have_content expected[:miles]
    expect(actual.find('.calculator-form__annual-salary-input').value).to eq expected[:annual_salary]
    expect(actual.find('.supplier-record__fixed-term-length')).to have_content expected[:term]
    expect(actual.find('.supplier-record__finders-fee')).to have_content expected[:finders_fee]
    expect(actual.find('.supplier-record__finders-fee-percentage')).to have_content expected[:rate]
  end
end

Then('the number of months in the results is {string}') do |number_of_months|
  supply_teachers_page.agency_results.suppliers.each do |agency|
    expect(agency.find('.supplier-record__fixed-term-length')).to have_content number_of_months
  end
end

FIELD_TO_CLASS = {
  'cost of the worker' => '.supplier-record__worker-cost',
  'agency fee' => '.supplier-record__agency-fee',
  'finders fee' => '.supplier-record__finders-fee'
}.freeze

Then('for the agency {string} I should see {string} for the {string}') do |agency_name, value, field|
  expect(supply_teachers_page.find('h2', text: agency_name).find(:xpath, '../../..').find(FIELD_TO_CLASS[field])).to have_content(value)
end

Then('for the agency number {int} I should see {string} for the finders fee') do |agency_number, value|
  expect(find_supplier_record_by_number(agency_number).find(FIELD_TO_CLASS['finders fee'])).to have_content(value)
end

Then('the results for {string} are muted') do |agency_name|
  expect(supply_teachers_page.find('h2', text: agency_name).find(:xpath, '../../../div[3]')[:class]).to include('supplier-record__calculator--muted')
end

Then('the results for supplier number {int} are muted') do |agency_number|
  expect(find_supplier_record_by_number(agency_number).find(:xpath, 'div[3]')[:class]).to include('supplier-record__calculator--muted')
end

Then('the choices used to generate the list are:') do |choices_table|
  choices_elements = supply_teachers_page.agency_results.choices
  choices = choices_table.raw.flatten

  expect(choices_elements.length).to eq choices.length

  choices_elements.zip(choices).each do |actual, expected|
    expect(actual).to have_content expected
  end
end

Then('the sub title is Agency details') do
  expect(supply_teachers_page.agency_details.sub_title).to have_content 'Agency details'
end

Then('I click on the first agency') do
  supply_teachers_page.all_agencies.agencies.first.find('a').click
end

Then('the branches are:') do |raw_branches|
  branches_elements = supply_teachers_page.agency_details.branches_table.map(&:Branch)
  branches = raw_branches.raw.flatten

  expect(branches_elements.length).to eq branches.length

  branches_elements.zip(branches).each do |actual, expected|
    expect(actual).to have_content expected
  end
end

Then('the agency has at least one branch with the following table headings:') do |branches_heading_table|
  expect(supply_teachers_page.agency_details.branches_table.count).to be_positive

  branches_table_heading_elements = supply_teachers_page.agency_details.branches_table_headings
  branches_table_headings = branches_heading_table.raw.flatten

  expect(branches_table_heading_elements.length).to eq branches_table_headings.length

  branches_table_heading_elements.zip(branches_table_headings).each do |actual, expected|
    expect(actual).to have_content expected
  end
end

Then('the {string} is {string}') do |contact_detail, value|
  expect(supply_teachers_page.agency_details.branch_details.send(contact_detail)).to have_content value
end

Then('they have the branch and contact details for the following:') do |contact_detail_headings_table|
  contact_detail_headings = contact_detail_headings_table.raw.flatten
  contact_detail_heading_elements = supply_teachers_page.agency_details.branch_details.all('strong')

  expect(contact_detail_heading_elements.length).to eq contact_detail_headings.length

  contact_detail_heading_elements.zip(contact_detail_headings).each do |actual, expected|
    expect(actual).to have_content expected
  end
end

Then('the {string} is {string} for the {string} branch') do |contact_detail, value, branch|
  expect(supply_teachers_page.agency_details.branches_table.find { |branch_element| branch_element.Branch.text.include?(branch) }.send(contact_detail)).to have_content value
end

Then('the address for the {string} branch is:') do |branch, address|
  expect(supply_teachers_page.agency_details.branches_table.find { |branch_element| branch_element.Branch.text.include?(branch) }.Address).to have_content address.raw.flatten.join(' ')
end

Then('the agency has the following rates:') do |raw_rates|
  rates = raw_rates.raw.to_h { |rate| [rate[0], { one_week: rate[1], twelve_weeks: rate[2], more_than_twelve_weeks: rate[3] }] }
  rates_table = supply_teachers_page.agency_details.agency_rates_table

  rates.each do |job_type, rate|
    rate_row = rates_table.find('th', text: job_type).find(:xpath, '..')

    expect(rate_row.find(:xpath, './td[1]')).to have_content(rate[:one_week])
    expect(rate_row.find(:xpath, './td[2]')).to have_content(rate[:twelve_weeks])
  end
end

Then('the the correct type of rates:') do |rate_heading_and_type|
  rates_table = supply_teachers_page.agency_details.agency_rates_table

  rate_heading_and_type.raw.each do |job_type, rate_type|
    rate_row = rates_table.find('th', text: job_type).find(:xpath, '..')

    ['1', '2'].each do |row|
      check_rate_type(rate_row.find(:xpath, "./td[#{row}]").text, rate_type)
    end
  end
end

Then('the reason for no transfer fee is:') do |reason|
  expect(supply_teachers_page.panel.body).to have_content reason.raw.flatten.first
end

Then('my temp to perm fee is {string}') do |fee|
  expect(supply_teachers_page.panel.body).to have_content fee
end

Then('my temp to perm fee is between {string} and {string}') do |min_fee, max_fee|
  expect(supply_teachers_page.panel.body).to have_content "#{min_fee} and #{max_fee}"
end

Then('the resultant information includes:') do |information|
  information.raw.flatten.each do |piece_of_info|
    expect(supply_teachers_page.temp_to_perm_result.information).to have_content piece_of_info
  end
end

def date_options(date)
  case date.downcase
  when 'today'
    Time.zone.today.strftime('%d/%m/%Y')
  when 'yesterday'
    Time.zone.yesterday.strftime('%d/%m/%Y')
  when 'tomorrow'
    Time.zone.tomorrow.strftime('%d/%m/%Y')
  else
    date
  end.split('/')
end

def wait_for_ajax
  page.has_css?('main-content')
end

def add_dates(section, day, month, year)
  supply_teachers_page.send(section.to_sym).find('.govuk-date-input__item:nth-of-type(1) .govuk-date-input__input').set(day)
  supply_teachers_page.send(section.to_sym).find('.govuk-date-input__item:nth-of-type(2) .govuk-date-input__input').set(month)
  supply_teachers_page.send(section.to_sym).find('.govuk-date-input__item:nth-of-type(3) .govuk-date-input__input').set(year)
end

def find_supplier_record(agency_name)
  supply_teachers_page.find('h2', text: agency_name).find(:xpath, '../../..')
end

def find_supplier_record_by_number(agency_number)
  supply_teachers_page.agency_results.suppliers[agency_number - 1]
end

def find_supplier_record_rate_by_number(agency_number)
  (find_supplier_record_by_number(agency_number).find('.supplier-record__finders-fee').text[1..].gsub(',', '_').to_f * 100).to_i
end

def collect_agencies
  supply_teachers_page.agency_results.suppliers.map { |agency| [agency.find('h2').text, agency.find('.supplier-record__branch-name').text] }
end

def collect_agency_rates
  supply_teachers_page.agency_results.suppliers.map { |agency| [agency.find('h2').text, (agency.find('.supplier-record__finders-fee').text[1..].gsub(',', '_').to_f * 100).to_i] }
end

def check_rate_type(rate, rate_type)
  case rate_type
  when '£'
    expect(rate).to start_with('£')
  when '%'
    expect(rate).to end_with('%')
  end
end
