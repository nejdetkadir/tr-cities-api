# frozen_string_literal: true

module Swagger
  module Parameters
    class TownId
      include Swagger::Blocks

      swagger_component do
        parameter :town_id do
          key :name, :town_id
          key :in, :path
          key :description, 'The id of the town'
          key :required, true
          schema do
            key :type, :integer
          end
        end
      end
    end
  end
end
