# frozen_string_literal: true

json.meta do
  json.partial! 'shared/pagination', locals: { collection: collection }
end
