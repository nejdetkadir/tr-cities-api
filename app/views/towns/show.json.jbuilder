# frozen_string_literal: true

json.city do
  json.partial! 'cities/city', locals: { city: @town.city }
end

json.town do
  json.partial! 'town', locals: { town: @town }
end
