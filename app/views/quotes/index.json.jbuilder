# frozen_string_literal: true

json.array! @quotes do |quote|
  json.quote quote.quote
  json.author quote.author
  json.author_about quote.author_about
  json.tags quote.tags
end
