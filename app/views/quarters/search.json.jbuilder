# frozen_string_literal: true

json.partial! 'quarters/list', locals: { quarters: @quarters, district: @district, town: @town, city: @city }
