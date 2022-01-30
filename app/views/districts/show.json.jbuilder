# frozen_string_literal: true

json.city do
  json.partial! 'cities/city', locals: { city: @district.town.city }
end

json.town do
  json.partial! 'towns/town', locals: { town: @district.town }
end

json.district do
  json.partial! 'district', locals: { district: @district }
end
