# frozen_string_literal: true

module Swagger
  module Models
    class Town
      include Swagger::Blocks

      swagger_component do
        schema :Town do
          key :type, :object
          key :required, %i[id name]

          property :id do
            key :type, :int64
            key :example, 1
          end

          property :name do
            key :type, :string
            key :example, 'Bafra'
          end
        end
      end
    end
  end
end
