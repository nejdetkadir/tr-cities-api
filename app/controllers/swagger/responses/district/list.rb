# frozen_string_literal: true

module Swagger
  module Responses
    module District
      class List
        include Swagger::Blocks

        swagger_component do
          schema :DistrictsListResponse do
            key :type, :object
            key :required, %i[city town districts meta]

            property :city do
              key :'$ref', :City
            end

            property :town do
              key :'$ref', :Town
            end

            property :districts do
              key :type, :array

              items do
                key :'$ref', :District
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
