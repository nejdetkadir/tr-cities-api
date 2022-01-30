# frozen_string_literal: true

module Swagger
  module Parameters
    class QuarterId
      include Swagger::Blocks

      swagger_component do
        parameter :quarter_id do
          key :name, :quarter_id
          key :in, :path
          key :description, 'The id of the quarter'
          key :required, true
          schema do
            key :type, :integer
          end
        end
      end
    end
  end
end
