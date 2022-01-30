# frozen_string_literal: true

module Swagger
  module Parameters
    class Page
      include Swagger::Blocks

      swagger_component do
        parameter :page do
          key :name, :page
          key :in, :query
          key :description, 'Page'
          key :example, 1
          key :required, false
          schema do
            key :type, :integer
          end
        end

        parameter :per_page do
          key :name, :per_page
          key :in, :query
          key :description, 'Per page limit'
          key :example, 25
          key :required, false
          schema do
            key :type, :integer
          end
        end
      end
    end
  end
end
