# Search page
class SearchPage < SitePrism::Page
  set_url '/search'

  element :title, 'h1'
  element :search_input, "input[id='search_input']"
  element :confirm_button, "input[id='commit']"

  elements :results, "div[class='result']"
end
