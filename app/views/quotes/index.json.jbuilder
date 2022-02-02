# frozen_string_literal: true

json.array! @quotes do |quote|
  json.extract! quote, :quote, :author, :author_about
end
