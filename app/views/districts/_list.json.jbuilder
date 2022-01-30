# frozen_string_literal: true

json.city do
  json.partial! 'cities/city', locals: { city: city }
end

json.town do
  json.partial! 'towns/town', locals: { town: town }
end

json.districts(districts) do |district|
  json.partial! 'district', locals: { district: district }
end

json.partial! 'shared/meta', locals: { collection: districts }
