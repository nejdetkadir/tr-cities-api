# frozen_string_literal: true

json.city do
  json.partial! 'city', locals: { city: @city }
end
