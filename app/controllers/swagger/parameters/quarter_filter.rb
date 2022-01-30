# frozen_string_literal: true

module Swagger
  module Parameters
    class QuarterFilter
      include Swagger::Blocks

      swagger_component do
        schema :QuarterFilter do
          key :type, :object

          property :name_eq do
            key :type, :string
            key :example, 'Quarter name'
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
