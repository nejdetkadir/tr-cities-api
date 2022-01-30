# frozen_string_literal: true

json.city do
  json.partial! 'cities/city', locals: { city: city }
end

json.town do
  json.partial! 'towns/town', locals: { town: town }
end

json.district do
  json.partial! 'districts/district', locals: { district: district }
end

json.quarters(quarters) do |quarter|
  json.partial! 'quarter', locals: { quarter: quarter }
end

json.partial! 'shared/meta', locals: { collection: quarters }
