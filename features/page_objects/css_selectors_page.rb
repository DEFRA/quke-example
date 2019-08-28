# frozen_string_literal: true

# CSS selectors page
class CssSelectorsPage < SitePrism::Page
  set_url '/cssselector'

  element :title, 'h1'
  element :about_link, "a[href*='about']"
  element :contact_link, "a[href^='/con']"
  element :confirm_button, "input[id$='mmit']"

  elements :links, 'a[href]'
  elements :radio_buttons, "input[type='radio']"
  elements :boxes_and_radio_buttons, "input[type~='radio checkbox']"
end
