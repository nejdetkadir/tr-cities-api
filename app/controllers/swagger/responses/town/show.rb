# frozen_string_literal: true

module Swagger
  module Responses
    module Town
      class Show
        include Swagger::Blocks

        swagger_component do
          schema :TownShowResponse do
            key :type, :object
            key :required, %i[city town]

            property :city do
              key :'$ref', :City
            end

            property :town do
              key :'$ref', :Town
            end
          end
        end
      end
    end
  end
end
