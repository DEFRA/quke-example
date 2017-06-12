Feature: JavaScript error
  To demonstrate how you can use Quke
  As a user of Quke
  I want to see how JavaScript errors are handled
  And how I can choose to ignore them

  Scenario: Testing driver response to a JavaScript error (page objects)
    Given I am on the home page
     When I go to the JavaScript error page
     Then It should show we have an error

  Scenario: Testing driver response to a JavaScript error (capybara)
    Given I'm at the home page
     When I navigate to the JavaScript error page
     Then I should see we have an error
