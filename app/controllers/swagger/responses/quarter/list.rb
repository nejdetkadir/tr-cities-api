# frozen_string_literal: true

module Swagger
  module Responses
    module Quarter
      class List
        include Swagger::Blocks

        swagger_component do
          schema :QuartersListResponse do
            key :type, :object
            key :required, %i[city town district quarters meta]

            property :city do
              key :'$ref', :City
            end

            property :town do
              key :'$ref', :Town
            end

            property :district do
              key :'$ref', :District
            end

            property :quarters do
              key :type, :array

              items do
                key :'$ref', :Quarter
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
