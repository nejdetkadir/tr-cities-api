# frozen_string_literal: true

json.partial! 'towns/list', locals: { towns: @towns, city: @city }
