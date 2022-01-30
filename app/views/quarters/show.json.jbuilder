# frozen_string_literal: true

json.city do
  json.partial! 'cities/city', locals: { city: @quarter.district.town.city }
end

json.town do
  json.partial! 'towns/town', locals: { town: @quarter.district.town }
end

json.district do
  json.partial! 'districts/district', locals: { district: @quarter.district }
end

json.quarters do
  json.partial! 'quarter', locals: { quarter: @quarter }
end
