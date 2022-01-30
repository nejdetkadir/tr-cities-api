# frozen_string_literal: true

module Swagger
  module Parameters
    class DistrictId
      include Swagger::Blocks

      swagger_component do
        parameter :district_id do
          key :name, :district_id
          key :in, :path
          key :description, 'The id of the district'
          key :required, true
          schema do
            key :type, :integer
          end
        end
      end
    end
  end
end
