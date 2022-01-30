# frozen_string_literal: true

module Swagger
  module Models
    class City
      include Swagger::Blocks

      swagger_component do
        schema :City do
          key :type, :object
          key :required, %i[id name alpha_2_code]

          property :id do
            key :type, :integer
            key :example, 1
          end

          property :name do
            key :type, :string
            key :example, 'Samsun'
          end

          property :alpha_2_code do
            key :type, :string
            key :example, 'TR-55'
          end
        end
      end
    end
  end
end
