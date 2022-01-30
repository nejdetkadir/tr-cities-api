# frozen_string_literal: true

module Swagger
  module Models
    class Quarter
      include Swagger::Blocks

      swagger_component do
        schema :Quarter do
          key :type, :object
          key :required, %i[id name]

          property :id do
            key :type, :integer
            key :example, 1
          end

          property :name do
            key :type, :string
            key :example, 'Kuşçular Köyü'
          end
        end
      end
    end
  end
end
