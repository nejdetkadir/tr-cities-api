# frozen_string_literal: true

module Swagger
  module Responses
    module Town
      class List
        include Swagger::Blocks

        swagger_component do
          schema :TownsListResponse do
            key :type, :object
            key :required, %i[city meta]

            property :id do
              key :type, :int64
              key :example, 1
            end

            property :name do
              key :type, :string
              key :example, 'Samsun'
            end

            property :alpha_2_code do
              key :type, :string
              key :example, 'TR-55'
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
