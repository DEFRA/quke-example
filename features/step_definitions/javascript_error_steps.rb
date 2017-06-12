# The following steps use the page objects to drive the browser
Given(/^I am on the home page$/) do
  @app = App.new
  @app.home_page.load
  expect(@app.home_page.title.text).to eq('Welcome to Quke')
end

When(/^I go to the JavaScript error page$/) do
  expect { @app.javascript_error_page.load }.to raise_error(Capybara::Poltergeist::JavascriptError)
end

Then(/^It should show we have an error$/) do
  # We have to capture the error in the previous step else the exception will
  # block us from continuing. However the scenario reads better if we can break
  # it down.
  true
end

# The following steps use capybara directly to drive the browser
Given(/^I'm at the home page$/) do
  visit '/'
  expect(page).to have_content('Welcome to Quke')
end

When(/^I navigate to the JavaScript error page$/) do
  expect { visit('/jserror') }.to raise_error(Capybara::Poltergeist::JavascriptError)
end

Then(/^I should see we have an error$/) do
  # We have to capture the error in the previous step else the exception will
  # block us from continuing. However the scenario reads better if we can break
  # it down.
  true
end
