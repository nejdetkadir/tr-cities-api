# frozen_string_literal: true

module Swagger
  module Parameters
    class DistrictFilter
      include Swagger::Blocks

      swagger_component do
        schema :DistrictFilter do
          key :type, :object

          property :name_eq do
            key :type, :string
            key :example, 'District name'
          end

          property :s do
            key :type, :string
            key :example, 'id asc'
          end
        end
      end
    end
  end
end
