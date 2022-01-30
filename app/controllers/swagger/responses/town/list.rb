# frozen_string_literal: true

module Swagger
  module Responses
    module Town
      class List
        include Swagger::Blocks

        swagger_component do
          schema :TownsListResponse do
            key :type, :object
            key :required, %i[city towns meta]

            property :city do
              key :'$ref', :City
            end

            property :towns do
              key :type, :array

              items do
                key :'$ref', :Town
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
