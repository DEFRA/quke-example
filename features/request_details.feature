Feature: Request details
  To demonstrate how you can use Quke
  As a user of Quke
  I want to see that the request received matches what I configured in Quke

  @wip
  Scenario: Checking for custom user agent (page objects)
    Given I am on the request details page
     Then It should show we made a "GET" request
      And the user agent was "Mozilla/5.0 (MSIE 10.0; Windows NT 6.1; Trident/5.0)"

  @wip
  Scenario: Checking for custom user agent (capybara)
    Given I'm at the request details page
     Then I should see we made a "GET" request
      And that the user agent was "Mozilla/5.0 (MSIE 10.0; Windows NT 6.1; Trident/5.0)"
