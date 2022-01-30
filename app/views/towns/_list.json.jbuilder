# frozen_string_literal: true

json.city do
  json.partial! 'cities/city', locals: { city: city }
end

json.towns(towns) do |town|
  json.partial! 'town', locals: { town: town }
end

json.partial! 'shared/meta', locals: { collection: towns }
