# frozen_string_literal: true

module Swagger
  module Parameters
    class CityFilter
      include Swagger::Blocks

      swagger_component do
        schema :CityFilter do
          key :type, :object

          property :name_eq do
            key :type, :string
            key :example, 'City name'
          end

          property :alpha_2_code_eq do
            key :type, :string
            key :example, 'Alpha-2 code'
          end

          property :s do
            key :type, :string
            key :example, 'alpha_2_code asc'
          end
        end
      end
    end
  end
end
