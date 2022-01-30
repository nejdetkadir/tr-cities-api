# frozen_string_literal: true

module Swagger
  module Responses
    module Quarter
      class Show
        include Swagger::Blocks

        swagger_component do
          schema :QuarterShowResponse do
            key :type, :object
            key :required, %i[city town district quarter meta]

            property :city do
              key :'$ref', :City
            end

            property :town do
              key :'$ref', :Town
            end

            property :district do
              key :'$ref', :District
            end

            property :quarter do
              key :'$ref', :Quarter
            end
          end
        end
      end
    end
  end
end
