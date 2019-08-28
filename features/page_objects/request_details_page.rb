# frozen_string_literal: true

# Request details page
class RequestDetailsPage < SitePrism::Page
  set_url '/request'

  element :title, 'h1'
  element :request_type, '#REQUEST_METHOD'
  element :user_agent, '#HTTP_USER_AGENT'

  elements :results, "div[class='result']"
end
