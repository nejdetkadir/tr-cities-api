# frozen_string_literal: true

module Swagger
  module Models
    class District
      include Swagger::Blocks

      swagger_component do
        schema :District do
          key :type, :object
          key :required, %i[id name]

          property :id do
            key :type, :integer
            key :example, 1
          end

          property :name do
            key :type, :string
            key :example, 'Köyler'
          end
        end
      end
    end
  end
end
