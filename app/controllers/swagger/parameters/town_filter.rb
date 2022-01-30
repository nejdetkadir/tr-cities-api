# frozen_string_literal: true

module Swagger
  module Parameters
    class TownFilter
      include Swagger::Blocks

      swagger_component do
        schema :TownFilter do
          key :type, :object

          property :name_eq do
            key :type, :string
            key :example, 'City name'
          end

          property :s do
            key :type, :string
            key :example, 'id asc'
          end
        end
      end
    end
  end
end
