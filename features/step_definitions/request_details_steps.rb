# The following steps use the page objects to drive the browser
Given(/^I am on the request details page$/) do
  @app = App.new
  @app.request_details_page.load
  expect(@app.request_details_page.title.text).to eq('Request details')
end

Then(/^It should show we made a "([^"]*)" request$/) do |request_type|
  expect(@app.request_details_page.request_type.text).to eq(request_type)
end

And(/^the user agent was "([^"]*)"$/) do |user_agent|
  expect(@app.request_details_page.user_agent.text).to eq(user_agent)
end

# The following steps use capybara directly to drive the browser
Given(/^I'm at the request details page$/) do
  visit 'http://localhost:4567/request'
  expect(page).to have_content('Request details')
end

Then(/^I should see we made a "([^"]*)" request$/) do |request_type|
  expect(find('#REQUEST_METHOD').text).to eq(request_type)
end

And(/^that the user agent was "([^"]*)"$/) do |user_agent|
  expect(find('#HTTP_USER_AGENT').text).to eq(user_agent)
end
