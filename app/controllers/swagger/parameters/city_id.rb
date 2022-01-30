# frozen_string_literal: true

module Swagger
  module Parameters
    class CityId
      include Swagger::Blocks

      swagger_component do
        parameter :city_id do
          key :name, :city_id
          key :in, :path
          key :description, 'The id of the city'
          key :required, true
          schema do
            key :type, :integer
          end
        end
      end
    end
  end
end
