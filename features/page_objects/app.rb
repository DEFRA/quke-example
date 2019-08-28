# frozen_string_literal: true

# Represents all pages in the application. Was created to avoid needing to
# create individual instances of each page throughout the steps.
# https://github.com/natritmeyer/site_prism#epilogue
class App
  # Using an attr_reader automatically gives me a my_app.last_page method
  attr_reader :last_page

  def home_page
    @last_page = HomePage.new
  end

  def search_page
    @last_page = SearchPage.new
  end

  def radio_button_page
    @last_page = RadioButtonPage.new
  end

  def css_selectors_page
    @last_page = CssSelectorsPage.new
  end

  def request_details_page
    @last_page = RequestDetailsPage.new
  end

  def javascript_error_page
    @last_page = JavascriptErrorPage.new
  end
end
