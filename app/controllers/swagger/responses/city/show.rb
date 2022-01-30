# frozen_string_literal: true

module Swagger
  module Responses
    module City
      class Show
        include Swagger::Blocks

        swagger_component do
          schema :CityShowResponse do
            key :type, :object
            key :required, %i[city meta]

            property :city do
              key :'$ref', :City
            end
          end
        end
      end
    end
  end
end
