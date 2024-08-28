# frozen_string_literal: true

json.extract! about_page, :title, :body
json.url about_page_url(about_page, format: :json)
