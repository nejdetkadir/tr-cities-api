# frozen_string_literal: true

json.cities(cities) do |city|
  json.partial! 'city', locals: { city: city }
end

json.partial! 'shared/meta', locals: { collection: cities }
