# frozen_string_literal: true

json.partial! 'districts/list', locals: { districts: @districts, town: @town, city: @city }
