# frozen_string_literal: true

json.partial! 'cities/city', locals: { city: city }

json.towns(towns) do |town|
  json.partial! 'town', locals: { town: town }
end

json.partial! 'shared/meta', locals: { collection: towns }
