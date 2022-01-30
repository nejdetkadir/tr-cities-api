# frozen_string_literal: true

module Swagger
  module Responses
    module City
      class List
        include Swagger::Blocks

        swagger_component do
          schema :CitiesListResponse do
            key :type, :object
            key :required, %i[cities meta]

            property :cities do
              key :type, :array
              items do
                key :'$ref', :City
              end
            end

            property :meta do
              key :'$ref', :Meta
            end
          end
        end
      end
    end
  end
end
