# frozen_string_literal: true

module Swagger
  module Responses
    module District
      class Show
        include Swagger::Blocks

        swagger_component do
          schema :DistrictShowResponse do
            key :type, :object
            key :required, %i[city town district]

            property :city do
              key :'$ref', :City
            end

            property :town do
              key :'$ref', :Town
            end

            property :district do
              key :'$ref', :District
            end
          end
        end
      end
    end
  end
end
