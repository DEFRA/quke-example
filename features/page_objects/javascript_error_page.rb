# frozen_string_literal: true

# JavaScript error page
class JavascriptErrorPage < SitePrism::Page
  set_url '/jserror'

  element :title, 'h1'

  elements :results, "div[class='result']"
end
